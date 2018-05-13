#include "stdinc.h"

#include <Wire.h>

uint16_t MPU_addr = 0x68;  // I2C address of the MPU-6050
uint8_t adcThrottle;
int16_t AcX, AcY, AcZ, Tmp, GyX, GyY, GyZ;
int32_t adc;

void setupImu()
{
  Wire.begin();
  Wire.setClock(400000);

  Wire.beginTransmission(MPU_addr);
  Wire.write(0x6B);  // PWR_MGMT_1 register
  Wire.write(0);     // set to zero (wakes up the MPU-6050)
  Wire.endTransmission(true);

  pinMode(12, OUTPUT);
  digitalWrite(12, LOW);

  pinMode(17, OUTPUT);
  pinMode(18, OUTPUT);
  pinMode(19, OUTPUT);
  digitalWrite(17, HIGH);
  digitalWrite(18, LOW);
  digitalWrite(19, HIGH);

  adcAttachPin(A0);
  adc = 16000;
}

void loopImu()
{
  adcStart(A0);

  Wire.beginTransmission(MPU_addr);
  Wire.write(0x3B);  // starting with register 0x3B (ACCEL_XOUT_H)
  Wire.endTransmission(false);
  Wire.requestFrom(MPU_addr, 14, true);  // request a total of 14 registers
  AcX = Wire.read() << 8 | Wire.read();  // 0x3B (ACCEL_XOUT_H) & 0x3C (ACCEL_XOUT_L)
  AcY = Wire.read() << 8 | Wire.read();  // 0x3D (ACCEL_YOUT_H) & 0x3E (ACCEL_YOUT_L)
  AcZ = Wire.read() << 8 | Wire.read();  // 0x3F (ACCEL_ZOUT_H) & 0x40 (ACCEL_ZOUT_L)
  Tmp = Wire.read() << 8 | Wire.read();  // 0x41 (TEMP_OUT_H) & 0x42 (TEMP_OUT_L)
  GyX = Wire.read() << 8 | Wire.read();  // 0x43 (GYRO_XOUT_H) & 0x44 (GYRO_XOUT_L)
  GyY = Wire.read() << 8 | Wire.read();  // 0x45 (GYRO_YOUT_H) & 0x46 (GYRO_YOUT_L)
  GyZ = Wire.read() << 8 | Wire.read();  // 0x47 (GYRO_ZOUT_H) & 0x48 (GYRO_ZOUT_L)

  int32_t tmp = 6664 * adcEnd(A0) / 1000;
  adc = adc + (tmp - adc) / 50;
  if(adc < 8000 && millis() > 1000)
  {
    digitalWrite(12, HIGH);
    digitalWrite(17, LOW);
    digitalWrite(18, HIGH);
    digitalWrite(19, HIGH);
  }
}
