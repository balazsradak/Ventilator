/* Copyright 2020, RespiraWorks

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
*/

#if defined(BARE_STM32)

#include "hal.h"
#include "stm32.h"

// This is the main stack 
uint32_t mainStack[ 500 ];

// local data 
static volatile uint32_t msCount;

// local static functions.  I don't want to add any private 
// functions to the Hal class to avoid complexity with other
// builds
static void InitGPIO( void );
static void InitADC( void );
static void InitSysTimer( void );
static void EnableClock( uint32_t base );
static void EnableInterrupt( int addr, int pri );
static void DisableInterrupt( int addr );
static void Timer6ISR( void );

// For now, the main function in main.cpp is called setup
// rather then main.  If we adopt this HAL then we can 
// just rename it main and get rid of the following function.
extern void setup( void );
int main( void ){
   setup();
}


// This function is called from the libc initialization code 
// before any static constructors are called.  We do some basic
// chip initialization here.
extern "C" void _init( void ){

   // Enable the FPU
   SysCtrl_Reg *sysCtl = (SysCtrl_Reg *)SYSCTL_BASE;
   sysCtl->cpac = 0x00F00000;

   // Reset caches and set latency for 80MHz opperation
   EnableClock( FLASH_BASE );
   FlashReg *flash = (FlashReg *)FLASH_BASE;
   flash->access = 0x00000004;
   flash->access = 0x00001804;
   flash->access = 0x00001804;
   flash->access = 0x00000604;

   // Enable the PLL.
   // We use the MSI clock as the source for the PLL
   // The MSI clock is running at it's default frequency of 
   // 4MHz.
   //
   // The PLL can generate several clocks with somewhat
   // less then descriptive names in the reference manual.
   // These clocks are:
   //   P clock - Used for the SAI peripherial.  Not used here
   //   Q clock - 48MHz output clock used for USB.  Not used here.
   //   R clock - This is the main system clock.  We care about this one.
   //
   // When configuring the PLL there are several constants programmed
   // into the PLL register to set the frequency of the internal VCO 
   // These constants are called N and M in the reference manual:
   //
   // Fin = 4MHz
   // Fvco = Fin * (N/M)
   //
   // Legal range for Fvco is 96MHz to 344MHz according to the 
   // data sheet.  I'll use 160MHz for Fvco and divide by 2
   // to get an 80MHz output clock
   //
   int N = 40;
   int M = 1;
   RCC_Regs *rcc = (RCC_Regs *)RCC_BASE;
   rcc->pllCfg = 0x01000001 | (N<<8) | ((M-1)<<4);

   // Turn on the PLL 
   rcc->clkCtrl |= 0x01000000;

   // Wait for the PLL ready indication
   while( !(rcc->clkCtrl & 0x02000000) ){}

   // Set PLL as system clock
   rcc->clkCfg = 0x00000003;

   // Use system clock as the A/D clock
   rcc->indClkCfg = 0x30000000;
}

/*
 * One time init of HAL.
 */
int temp_adc = 0;
void HalApi::init() {

   // Init various components needed by the system.
   InitGPIO();
   InitSysTimer();
   InitADC();

   // Enable interrupts
   IntEnable();
}

// Reset the processor
[[noreturn]] void HalApi::reset_device() {

   // Note that the system control registers are a standard ARM peripherial
   // they aren't documented in the normal STM32 reference manual, rather
   // they're in the processor programming manual.
   // The register we use to reset the system is called the 
   // "Application interrupt and reset control register (AIRCR)"
   SysCtrl_Reg *sysCtl = (SysCtrl_Reg *)SYSCTL_BASE;
   sysCtl->apInt = 0x05FA0004;
}

/******************************************************************
 * General Purpose I/O support.
 *
 * The following pins are used as GPIO on the rev-1 PCB 
 *
 * ID inputs.  These can be used to identify the PCB revision
 * we're running on.
 *  PB1  - ID0
 *  PA12 - ID1
 *
 * LED outputs.
 *  PC13 - red
 *  PC14 - yellow
 *  PC15 - green
 *
 * Solenoid
 *  PA11 - Note, this is also a timer pin so we may want to 
 *         PWM it to reduce the solenoid voltage.
 *         For no I'm treating it as a digital output.
 *****************************************************************/
static void InitGPIO( void )
{
   // Enable all the GPIO clocks
   EnableClock( GPIO_A_BASE );
   EnableClock( GPIO_B_BASE );
   EnableClock( GPIO_C_BASE );
   EnableClock( GPIO_D_BASE );
   EnableClock( GPIO_E_BASE );
   EnableClock( GPIO_H_BASE );

   // Configure PCB ID pins as inputs.
   GPIO_PinMode( GPIO_B_BASE,  1, GPIO_MODE_INPUT );
   GPIO_PinMode( GPIO_A_BASE, 12, GPIO_MODE_INPUT );

   // Configure LED pins as outputs
   GPIO_PinMode( GPIO_C_BASE, 13, GPIO_MODE_OUTPUT );
   GPIO_PinMode( GPIO_C_BASE, 14, GPIO_MODE_OUTPUT );
   GPIO_PinMode( GPIO_C_BASE, 15, GPIO_MODE_OUTPUT );

   // Turn all three LEDs off initially
   GPIO_ClrPin( GPIO_C_BASE, 13 );
   GPIO_ClrPin( GPIO_C_BASE, 14 );
   GPIO_ClrPin( GPIO_C_BASE, 15 );

   // Configure the solenoid and turn it off
   GPIO_PinMode( GPIO_A_BASE, 11, GPIO_MODE_OUTPUT );
   GPIO_ClrPin( GPIO_A_BASE, 11 );
}

// Set or clear the specified digital output
void HalApi::digitalWrite(BinaryPin pin, VoltageLevel value) {
   uint32_t base;
   int bit;

   switch( pin )
   {
      case BinaryPin::SOLENOID:
         base = GPIO_A_BASE;
         bit = 11;
         break;
   }

   switch( value )
   {
      case VoltageLevel::HAL_HIGH:
         GPIO_SetPin( base, bit );
         break;

      case VoltageLevel::HAL_LOW:
         GPIO_ClrPin( base, bit );
         break;
   }
}

/******************************************************************
 * System timer
 *
 * I use one of the basic timers (timer 6) for general system timing.
 * I configure it to count every microsecond and generate an interrupt 
 * every millisecond
 *****************************************************************/
static void InitSysTimer( void ){

   // Enable the clock to the timer
   EnableClock( TIMER6_BASE );

   // Just set the timer up to count every microsecond.
   TimerRegs *tmr = (TimerRegs *)TIMER6_BASE;
   tmr->reload = 999;
   tmr->prescale = 79;
   tmr->event = 1;
   tmr->ctrl[0] = 1;
   tmr->intEna  = 1;

   EnableInterrupt( INT_VEC_TIMER6, 3 );
}

// Just spin for a specified number of microseconds
static void BusyWait( uint16_t usec )
{
   while( usec > 1000 )
   {
      BusyWait(1000);
      usec -= 1000;
   }

   TimerRegs *tmr = (TimerRegs *)TIMER6_BASE;
   uint16_t start = tmr->counter;
   while( 1 )
   {
      uint16_t dt = tmr->counter - start;
      if( dt >= usec )
         return;
   }
}

static void Timer6ISR( void )
{
   TimerRegs *tmr = (TimerRegs *)TIMER6_BASE;
   tmr->status = 0;
   msCount++;
}

uint32_t HalApi::millis(){
   return msCount;
}

void HalApi::delay(uint32_t ms){
   uint32_t start = msCount;
   while( 1 )
   {
      uint32_t dt = msCount - start;
      if( dt >= ms )
         return;
   }
}

/******************************************************************
 * A/D inputs.
 *
 * The following pins are used as analog inputs on the rev-1 PCB 
 *
 * PA0 (ADC1_IN5)  - vin
 * PA1 (ADC1_IN6)  - pressure
 * PA4 (ADC1_IN9)  - inhale flow
 * PB0 (ADC1_IN15) - exhale flow
 *
 *****************************************************************/
static void InitADC( void ){
   // Enable the clock to the A/D converter
   EnableClock( ADC_BASE );

   // Configure the 4 pins used as analog inputs 
   GPIO_PinMode( GPIO_A_BASE, 0, GPIO_MODE_ANALOG );
   GPIO_PinMode( GPIO_A_BASE, 1, GPIO_MODE_ANALOG );
   GPIO_PinMode( GPIO_A_BASE, 4, GPIO_MODE_ANALOG );
   GPIO_PinMode( GPIO_B_BASE, 0, GPIO_MODE_ANALOG );

   // Perform a power-up and calibration sequence on 
   // the A/D converter
   ADC_Regs *adc = (ADC_Regs *)ADC_BASE;

   // Exit deep power down mode and turn on the
   // internal voltage regulator.
   adc->adc[0].ctrl   = 0x10000000;

   // Wait for the startup time specified in the datasheet
   // for the voltage regulator to become ready.
   // The time in the datasheet is 20 microseconds, but
   // I'll wait for 30 just to be extra conservative
   BusyWait( 30 );

   // Calibrate the A/D for single ended channels
   adc->adc[0].ctrl |= 0x80000000;

   // Wait until the CAL bit is cleared meaning
   // calibration is finished
   while( adc->adc[0].ctrl & 0x80000000 ){}

   // Clear all the status bits
   adc->adc[0].stat = 0x3FF;

   // Enable the A/D
   adc->adc[0].ctrl |= 0x00000001;

   // Wait for the ADRDY status bit to be set
   while( !(adc->adc[0].stat & 0x00000001) ){}

   // Configure the A/D as 12-bit resolution
   adc->adc[0].cfg[0] = 0x00000000;

   // Set sample time. I'm using 92.5 A/D clocks (a little over 1us)
   // to sample.  We'll need to do a bit of testing to see what the
   // best value is for this
   adc->adc[0].samp[0] = 5;
}

// Read a single A/D channel.
// This just does the conversion immediately when called.
//
// It would be better to start a sequence of conversions at the beginning of the loop
// but the HAL interface currently isn't set up to run that way.  That's an improvement
// that can be made later
int HalApi::analogRead(AnalogPin pin){

   int channel = 0;
   switch( pin )
   {
      case AnalogPin::PATIENT_PRESSURE:
         channel = 6;
         break;

      case AnalogPin::INFLOW_PRESSURE_DIFF:
         channel = 9;
         break;

      case AnalogPin::OUTFLOW_PRESSURE_DIFF:
         channel = 15;
         break;

      default:
         return 0;
   }

   ADC_Regs *adc = (ADC_Regs *)ADC_BASE;
   adc->adc[0].seq[0] = channel << 6;

   // Clear the EOC flag
   adc->adc[0].stat = 4;

   // Start the conversion
   adc->adc[0].ctrl |= 4;

   // Wait for the end of the conversion
   while( !(adc->adc[0].stat & 4) ){}

   // Return the result
   return adc->adc[0].data;
}

/******************************************************************
 * PWM outputs
 *****************************************************************/
void HalApi::analogWrite(PwmPin pin, int value) {
}


/******************************************************************
 * Serial port to GUI
 *****************************************************************/

uint16_t HalApi::serialRead(char *buf, uint16_t len) {
  return 0;
}

uint16_t HalApi::serialBytesAvailableForRead() {
  return 0;
}

uint16_t HalApi::serialWrite(const char *buf, uint16_t len) {
  return 0;
}

uint16_t HalApi::serialBytesAvailableForWrite() {
  return 0;
}

/******************************************************************
 * Watchdog timer
 *****************************************************************/
void HalApi::watchdog_init() {
}

void HalApi::watchdog_handler() {
}

// Enable clocks to a specific peripherial.
// On the STM32 the clocks going to various peripherials on the chip
// are individually selectable and for the most part disabled on startup.
// Clocks to the specific peripherials need to be enabled through the 
// RCC (Reset and Clock Controller) module before the peripherial can be
// used.
// Pass in the base address of the peripherial to enable it's clock
static void EnableClock( uint32_t base )
{
   // I don't include all the peripherials here, just the ones
   // that we currently use or seem likely to be used in the 
   // future.  To add more peripherials, just look up the appropriate
   // bit in the reference manual RCC chapter.
   //
   // This big case statement finds the index of the register in the 
   // array of clock enable registers, and the bit number used to enable
   // the clock for the specified peripherial.
   int ndx = -1;
   int bit = 0;
   switch( base )
   {
      case DMA1_BASE:    ndx = 0; bit =  0; break;
      case DMA2_BASE:    ndx = 0; bit =  1; break;
      case FLASH_BASE:   ndx = 0; bit =  8; break;

      case GPIO_A_BASE:  ndx = 1; bit =  0; break;
      case GPIO_B_BASE:  ndx = 1; bit =  1; break;
      case GPIO_C_BASE:  ndx = 1; bit =  2; break;
      case GPIO_D_BASE:  ndx = 1; bit =  3; break;
      case GPIO_E_BASE:  ndx = 1; bit =  4; break;
      case GPIO_H_BASE:  ndx = 1; bit =  7; break;
      case ADC_BASE:     ndx = 1; bit = 13; break;

      case TIMER2_BASE:  ndx = 4; bit =  0; break;
      case TIMER3_BASE:  ndx = 4; bit =  1; break;
      case TIMER6_BASE:  ndx = 4; bit =  4; break;
      case TIMER7_BASE:  ndx = 4; bit =  7; break;
      case SPI2_BASE:    ndx = 4; bit = 14; break;
      case SPI3_BASE:    ndx = 4; bit = 15; break;
      case UART2_BASE:   ndx = 4; bit = 17; break;
      case UART3_BASE:   ndx = 4; bit = 18; break;
      case UART4_BASE:   ndx = 4; bit = 19; break;
      case I2C1_BASE:    ndx = 4; bit = 21; break;
      case I2C2_BASE:    ndx = 4; bit = 22; break;
      case I2C3_BASE:    ndx = 4; bit = 23; break;

      case I2C4_BASE:    ndx = 5; bit =  1; break;

      case TIMER1_BASE:  ndx = 6; bit = 11; break;
      case SPI1_BASE:    ndx = 6; bit = 12; break;
      case UART1_BASE:   ndx = 6; bit = 13; break;
      case TIMER15_BASE: ndx = 6; bit = 16; break;
      case TIMER16_BASE: ndx = 6; bit = 17; break;
   }

   // Not sure what to do if the input address isn't found.
   // For now I just return.  Maybe I should force a fault?
   if( ndx < 0 ) return;

   // Enable the clock of the requested peripherial
   RCC_Regs *rcc = (RCC_Regs *)RCC_BASE;
   rcc->periphClkEna[ndx] |= (1<<bit);
}

/******************************************************************
 * Interrupt vector table.  The interrupt vector table is a list of
 * pointers to the various interrupt functions.  It is stored at the
 * very start of the flash memory.
 *****************************************************************/

// Fault handlers
static void fault( void )
{
   while(1){}
}

static void NMI( void )           { fault(); }
static void FaultISR( void )      { fault(); }
static void MPUFaultISR( void )   { fault(); }
static void BusFaultISR( void )   { fault(); }
static void UsageFaultISR( void ) { fault(); }
static void BadISR( void )        { fault(); }

extern "C" void Reset_Handler( void );
__attribute__ ((section(".isr_vector")))
void (* const vectors[])(void) =
{
   // The first entry of the ISR holds the initial value of the
   // stack pointer.  The ARM processor initializes the stack
   // pointer based on this address.
   (void (*)(void))((uint32_t)mainStack + sizeof(mainStack)),

   // The second ISR entry is the reset vector which is an 
   // assembly language routine that does some basic memory 
   // initilization and then calls main().
   // Note that the LSB of the reset vector needs to be set
   // (hence the +1 below).  This tells the ARM that this is
   // thumb code.  The cortex m4 processor only supports 
   // thumb code, so this will always be set or we'll get 
   // a hard fault.
   (void(*)(void))((uint32_t)Reset_Handler+1), //   1 - 0x004 The reset handler

   // The rest of the table is a list of exception and 
   // interrupt handlers.  Chapter 12 (NVIC) of the reference
   // manual gives a listing of the vector table offsets.
   NMI,                                    //   2 - 0x008 The NMI handler
   FaultISR,                               //   3 - 0x00C The hard fault handler
   MPUFaultISR,                            //   4 - 0x010 The MPU fault handler
   BusFaultISR,                            //   5 - 0x014 The bus fault handler
   UsageFaultISR,                          //   6 - 0x018 The usage fault handler
   BadISR,                                 //   7 - 0x01C Reserved
   BadISR,                                 //   8 - 0x020 Reserved
   BadISR,                                 //   9 - 0x024 Reserved
   BadISR,                                 //  10 - 0x028 Reserved
   BadISR,                                 //  11 - 0x02C SVCall handler
   BadISR,                                 //  12 - 0x030 Debug monitor handler
   BadISR,                                 //  13 - 0x034 Reserved
   BadISR,                                 //  14 - 0x038 The PendSV handler
   BadISR,                                 //  15 - 0x03C 
   BadISR,                                 //  16 - 0x040 
   BadISR,                                 //  17 - 0x044 
   BadISR,                                 //  18 - 0x048 
   BadISR,                                 //  19 - 0x04C 
   BadISR,                                 //  20 - 0x050 
   BadISR,                                 //  21 - 0x054 
   BadISR,                                 //  22 - 0x058 
   BadISR,                                 //  23 - 0x05C 
   BadISR,                                 //  24 - 0x060 
   BadISR,                                 //  25 - 0x064 
   BadISR,                                 //  26 - 0x068 
   BadISR,                                 //  27 - 0x06C 
   BadISR,                                 //  28 - 0x070 
   BadISR,                                 //  29 - 0x074 
   BadISR,                                 //  30 - 0x078 
   BadISR,                                 //  31 - 0x07C 
   BadISR,                                 //  32 - 0x080 
   BadISR,                                 //  33 - 0x084 
   BadISR,                                 //  34 - 0x088 
   BadISR,                                 //  35 - 0x08C 
   BadISR,                                 //  36 - 0x090 
   BadISR,                                 //  37 - 0x094 
   BadISR,                                 //  38 - 0x098 
   BadISR,                                 //  39 - 0x09C 
   BadISR,                                 //  40 - 0x0A0 
   BadISR,                                 //  41 - 0x0A4 
   BadISR,                                 //  42 - 0x0A8 
   BadISR,                                 //  43 - 0x0AC 
   BadISR,                                 //  44 - 0x0B0 
   BadISR,                                 //  45 - 0x0B4 
   BadISR,                                 //  46 - 0x0B8 
   BadISR,                                 //  47 - 0x0BC 
   BadISR,                                 //  48 - 0x0C0 
   BadISR,                                 //  49 - 0x0C4 
   BadISR,                                 //  50 - 0x0C8 
   BadISR,                                 //  51 - 0x0CC
   BadISR,                                 //  52 - 0x0D0 
   BadISR,                                 //  53 - 0x0D4 
   BadISR,                                 //  54 - 0x0D8 
   BadISR,                                 //  55 - 0x0DC 
   BadISR,                                 //  56 - 0x0E0 
   BadISR,                                 //  57 - 0x0E4 
   BadISR,                                 //  58 - 0x0E8 
   BadISR,                                 //  59 - 0x0EC 
   BadISR,                                 //  60 - 0x0F0 
   BadISR,                                 //  61 - 0x0F4 
   BadISR,                                 //  62 - 0x0F8 
   BadISR,                                 //  63 - 0x0FC 
   BadISR,                                 //  64 - 0x100
   BadISR,                                 //  65 - 0x104
   BadISR,                                 //  66 - 0x108
   BadISR,                                 //  67 - 0x10C
   BadISR,                                 //  68 - 0x110
   BadISR,                                 //  69 - 0x114
   Timer6ISR,                              //  70 - 0x118
   BadISR,                                 //  71 - 0x11C
};

// NOTE - this never actually gets called.  It's just here
// to prevent the linker from remove the vector array
const void *GetVectorAddr( void ){ return &vectors; }

// Enable an interrupt with a specified priority (0 to 15)
static void EnableInterrupt( int addr, int pri )
{
   IntCtrl_Regs *nvic = (IntCtrl_Regs *)NVIC_BASE;

   int id = addr/4 - 16;

   nvic->setEna[ id>>5 ] = 1<<(id&0x1F);

   // The STM32 processor implements bits 4-7 of the NVIM priority register.
   nvic->priority[id] = pri<<4;
}

static void DisableInterrupt( int addr )
{
   IntCtrl_Regs *nvic = (IntCtrl_Regs *)NVIC_BASE;

   int id = addr/4 - 16;

   nvic->clrEna[ id>>5 ] = 1<<(id&0x1F);
}


#endif
