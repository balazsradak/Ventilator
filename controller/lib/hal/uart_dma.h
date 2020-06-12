#ifndef __UART_DMA
#define __UART_DMA
#include "hal_stm32_regs.h"
#include "serial_listeners.h"

class DMACtrl {
  DMA_Regs *const dma_;

public:
  explicit DMACtrl(DMA_Regs *const dma) : dma_(dma) {}
  void init() {
    // UART3 reception happens on DMA1 channel 3
    dma_->chanSel.c3s = 0b0010;
    // UART3 transmission happens on DMA1 channel 2
    dma_->chanSel.c2s = 0b0010;
  }
};

class UART_DMA {
  UART_Regs *const uart_;
  DMA_Regs *const dma_;
  uint8_t tx_ch_;
  uint8_t rx_ch_;
  RxListener *rx_listener_ = nullptr;
  TxListener *tx_listener_ = nullptr;
  uint32_t baud_;
  char match_char_;

public:
#ifdef TEST_MODE
  UART_DMA() : uart_(0), dma_(0){};
#endif
  UART_DMA(UART_Regs *const uart, DMA_Regs *const dma, uint8_t tx_ch,
           uint8_t rx_ch, char match_char)
      : uart_(uart), dma_(dma), tx_ch_(tx_ch), rx_ch_(rx_ch),
        match_char_(match_char) {}

  void init(uint32_t baud);
  bool isTxInProgress();
  bool isRxInProgress();

  [[nodiscard]] bool startTX(const uint8_t *buf, uint32_t length,
                             TxListener *txl);

  uint32_t getRxBytesLeft();

  void stopTX();

  [[nodiscard]] bool startRX(const uint8_t *buf, uint32_t length,
                             RxListener *rxl);
  void stopRX();
  void charMatchEnable();

  void UART_ISR();
  void DMA_RX_ISR();
  void DMA_TX_ISR();

private:
  typedef struct {
    uint32_t ignored : 8;
    uint32_t bits : 24;
  } uint24_t;

  bool tx_in_progress;
  bool rx_in_progress;
};
#endif
