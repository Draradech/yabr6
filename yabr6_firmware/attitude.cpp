#include "stdinc.h"

void loopAttitude(void)
{
  int32_t tmp32;
  
  tmp32 = (int32_t)-100 * atan2_cordic(sensorData.acZ, sensorData.acX);
  attitude.angleAcc = PT1(tmp32, attitude.angleAcc, 64);

  tmp32 = -(sensorData.gyY * 76) / LOOPS_PER_SECOND - sensorOffsets.angleRate;
  attitude.angleGyro += tmp32;
  attitude.angleFused += tmp32;

  tmp32 = attitude.angleAcc;
  attitude.angleFused = PT1(tmp32, attitude.angleFused, 1024);

  if(attitude.angleGyro < attitude.angleFused)
  {
    sensorOffsets.subAngleRate--;
  }
  else if(attitude.angleGyro > attitude.angleFused)
  {
    sensorOffsets.subAngleRate++;
  }

  if(sensorOffsets.subAngleRate > 1000)
  {
    sensorOffsets.angleRate++;
    sensorOffsets.subAngleRate = 0;
    attitude.angleGyro = attitude.angleFused;
  }

  if(sensorOffsets.subAngleRate < -1000)
  {
    sensorOffsets.angleRate--;
    sensorOffsets.subAngleRate = 0;
    attitude.angleGyro = attitude.angleFused;
  }
}
