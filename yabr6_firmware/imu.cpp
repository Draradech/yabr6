#include "stdinc.h"

#include <Wire.h>

static uint16_t MPU_addr = 0x68;  // I2C address of the MPU-6050

void setupImu()
{
  Wire.begin();
  Wire.setClock(400000);

  Wire.beginTransmission(MPU_addr);
  Wire.write(0x6B);  // PWR_MGMT_1 register
  Wire.write(0);     // set to zero (wakes up the MPU-6050)
  Wire.endTransmission(true);

  adcAttachPin(A0);
  sensorData.voltage = 16000;
  sensorOffsets.angleRate = -30;
}

void loopImu()
{
  adcStart(A0);

  Wire.beginTransmission(MPU_addr);
  Wire.write(0x3B);  // starting with register 0x3B (ACCEL_XOUT_H)
  Wire.endTransmission(false);
  Wire.requestFrom(MPU_addr, (uint8_t)14, true);  // request a total of 14 registers
  sensorData.acX = Wire.read() << 8 | Wire.read();  // 0x3B (ACCEL_XOUT_H) & 0x3C (ACCEL_XOUT_L)
  sensorData.acY = Wire.read() << 8 | Wire.read();  // 0x3D (ACCEL_YOUT_H) & 0x3E (ACCEL_YOUT_L)
  sensorData.acZ = Wire.read() << 8 | Wire.read();  // 0x3F (ACCEL_ZOUT_H) & 0x40 (ACCEL_ZOUT_L)
  Wire.read(); Wire.read();  // 0x41 (TEMP_OUT_H) & 0x42 (TEMP_OUT_L)
  sensorData.gyX = Wire.read() << 8 | Wire.read();  // 0x43 (GYRO_XOUT_H) & 0x44 (GYRO_XOUT_L)
  sensorData.gyY = Wire.read() << 8 | Wire.read();  // 0x45 (GYRO_YOUT_H) & 0x46 (GYRO_YOUT_L)
  sensorData.gyZ = Wire.read() << 8 | Wire.read();  // 0x47 (GYRO_ZOUT_H) & 0x48 (GYRO_ZOUT_L)

  int32_t tmp = 4747 * adcEnd(A0) / 1000;
  sensorData.voltage = sensorData.voltage + (tmp - sensorData.voltage) / 50;
}
