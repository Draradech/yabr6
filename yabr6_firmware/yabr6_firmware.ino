#include "stdinc.h"

void setup()
{
  setupWifi();
  setupOta();
  setupInputOutput();
  setupLed();
  setupClock();
  setupUltra();
  setupImu();
  setupStepper();
  setupControl();
}

void loop()
{
  if(clk.expired())
  {
    loopUltra();
    loopImu();
    loopAttitude();
    loopControl();
    loopStepper();

    loopInputOutput();
  }
  loopOta();
}
