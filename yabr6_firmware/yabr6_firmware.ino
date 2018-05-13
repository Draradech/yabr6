#include "stdinc.h"

void setup()
{
  setupWifi();
  setupOta();
  setupInputOutput();
  setupClock();
  setupUltra();
  setupImu();
  setupStepper();
}

void loop()
{
  if(clk.expired())
  {
    loopUltra();
    loopImu();
    loopControl();

    loopInputOutput();
  }
  loopOta();
}
