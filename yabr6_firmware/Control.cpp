#include "stdinc.h"

int16_t tspeed1;
int16_t tspeed2;

void loopControl()
{
  tspeed1 = AcY / 200;
  tspeed2 = AcX / 200;

  stp.setTargetSpeed(abs(tspeed1) * tspeed1);
  stp2.setTargetSpeed(abs(tspeed2) * tspeed2);
}
