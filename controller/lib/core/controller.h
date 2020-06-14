#ifndef CONTROLLER_H_
#define CONTROLLER_H_

#include "actuators.h"
#include "blower_fsm.h"
#include "network_protocol.pb.h"
#include "pid.h"
#include "sensors.h"
#include "units.h"
#include <utility>

struct ControllerState {
  // True if this is the first breath of a new cycle.
  bool is_new_breath;

  // Patient pressure the controller wants to achieve.
  Pressure pressure_setpoint;
};

// This class is here to allow integration of our controller into Modelica
// software and run closed-loop tests in a simulated physical environment
class Controller {
public:
  static Duration GetLoopPeriod();

  Controller();

  std::pair<ActuatorsState, ControllerState>
  Run(Time now, const VentParams &params,
      const SensorReadings &sensor_readings);

private:
  BlowerFsm fsm_;
  PID pid_;
};

#endif // CONTROLLER_H_
