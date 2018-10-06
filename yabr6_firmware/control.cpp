#include "stdinc.h"

void setupControl()
{
  controlPara.angleWP = 640;
  controlPara.angleP = 20;
  controlPara.angleD = 50;
  controlPara.speedP = 20;
  controlPara.speedI = 50;
}

static int16_t counter;
static int8_t repeats;
static int32_t posLast;
static int8_t stuckDir;
void loopControl()
{
  counter++;
  counter %= 1500;
  if(counter == 0)
  {
    int32_t pos = stp.getPos() / 2 + stp2.getPos() / 2;
    controlState.movement = abs(pos - posLast);
    posLast = pos;
    if(controlState.movement < 35 && stuckDir == 0)
    {
      if(repeats < 5) repeats++;
      if(repeats == 5 )
      {
        stuckDir = (stp.getPos() & 2) - 1;
        repeats = 0;
      }
    }
  }
  if(sensorData.dist[1] > 40 && stuckDir)
  {
    repeats++;
    if(repeats == 100)
    {
      stuckDir = 0;
      repeats = 0;
    }
  }
  
  controlState.targetSpeed = (sensorData.dist[1] - 25) * 10;
  controlState.currentSpeed = (stp2.getSpeed() + stp.getSpeed()) / 20000;
  controlState.speedDeviation = (controlState.currentSpeed - controlState.targetSpeed);
  controlState.iPartSpeed += controlState.speedDeviation * controlPara.speedI / LOOPS_PER_SECOND;
  controlState.pPartSpeed = controlState.speedDeviation * controlPara.speedP;
  controlState.targetAngle = controlState.pPartSpeed + controlState.iPartSpeed + (controlPara.angleWP * 100);

  if(actuator.tempDisabled) controlState.iPartSpeed = 0;

  controlState.angleDeviation = controlState.targetAngle - attitude.angleFused;
  controlState.pPartAngle = controlState.angleDeviation * controlPara.angleP / 100;
  controlState.dPartAngle = controlPara.angleD * (sensorData.gyY + sensorOffsets.angleRate * LOOPS_PER_SECOND / 76) / 100;
  controlState.acc = controlState.pPartAngle + controlState.dPartAngle;
  controlState.acc = LIMIT(controlState.acc, -10000, 10000);
  
  if(abs(controlState.acc) < 1000 && abs(attitude.angleAcc) < 450000) actuator.tempDisabled = false;
  if(abs(attitude.angleFused) > 450000) actuator.tempDisabled = true;
  
  if(stuckDir)
  {
    controlState.dAcc = ((stuckDir * 50) * 500 - (stp2.getSpeed() - stp.getSpeed()) / 100) / 50;;
  }
  else
  {
    controlState.dAcc = ((sensorData.dist[0] - sensorData.dist[2]) * 500 - (stp2.getSpeed() - stp.getSpeed()) / 100) / 50;
  }

  stp.setAcc(controlState.acc - controlState.dAcc);
  stp2.setAcc(controlState.acc + controlState.dAcc);
}
