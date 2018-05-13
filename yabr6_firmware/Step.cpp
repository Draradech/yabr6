#include "stdinc.h"

Stepper stp(UPDATE_USEC, 13, 14);
Stepper stp2(UPDATE_USEC, 15, 16);

void IRAM_ATTR isrStepper()
{
  stp.update();
  stp2.update();
}

void setupStepper()
{
  stp.setAcc(20000);
  stp2.setAcc(20000);
}
