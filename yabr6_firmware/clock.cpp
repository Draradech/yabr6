#include "stdinc.h"

Clock1 clk;

void IRAM_ATTR callback()
{
  isrStepper();
  isrUltra();
}

void setupClock()
{
  clk.registerCallback(callback);
  clk.expireFactor(MAINLOOP_USEC / UPDATE_USEC);
  clk.period(UPDATE_USEC);
}
