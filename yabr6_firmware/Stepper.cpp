#include <Arduino.h>
#include "Stepper.h"

Stepper::Stepper(int32_t period, uint8_t pinStep, uint8_t pinDir)
{
   int32_t updateRate = 1000000 / period;
   _spdRes = updateRate;
   _stpRes = updateRate * updateRate;
   _pos = _stp = _spd = _spdMax = _spdTrgt = _acc = 0;
   _mode = STP_ACC_MODE;
   _pinStep = pinStep;
   _pinDir = pinDir;
   pinMode(_pinStep, OUTPUT);
   pinMode(_pinDir, OUTPUT);
   digitalWrite(_pinStep, LOW);
   digitalWrite(_pinDir, LOW);
}

void IRAM_ATTR Stepper::update()
{
   digitalWrite(_pinStep, LOW);
   if(_mode == STP_SPD_MODE)
   {
      if(_spd >= _spdTrgt)
      {
         if(_acc > 0) _acc = -_acc;
         if(_spdTrgt - _spd - _acc > 0) _spd = _spdTrgt - _acc;
      }
      else if(_spd <= _spdTrgt)
      {
         if(_acc < 0) _acc = -_acc;
         if(_spdTrgt - _spd - _acc < 0) _spd = _spdTrgt - _acc;
      }
   }

   _spd = _spd + _acc;

   if(_mode == STP_ACC_MODE)
   {
      _spd = _spd > _spdMax ? _spdMax : _spd;
      _spd = _spd < -_spdMax ? -_spdMax : _spd;
   }

   _stp = _stp + _spd;

   if(_stp  >= _stpRes)
   {
      _stp = _stp - _stpRes;
      _pos++;
      digitalWrite(_pinDir, HIGH);
      delayMicroseconds(1);
      digitalWrite(_pinStep, HIGH);
   }
   else if(_stp <= -_stpRes)
   {
      _stp = _stp + _stpRes;
      _pos--;
      digitalWrite(_pinDir, LOW);
      delayMicroseconds(1);
      digitalWrite(_pinStep, HIGH);
   }
}

void Stepper::setAcc(int32_t acc)
{
  _acc = acc;
}

void Stepper::setMaxSpeed(int32_t spd)
{
  if(spd > _spdRes) spd = _spdRes;
  _spdMax = spd * _spdRes;
  _mode = STP_ACC_MODE;
}

void Stepper::setTargetSpeed(int32_t spd)
{
  if(spd > _spdRes) spd = _spdRes;
  if(spd < -_spdRes) spd = -_spdRes;
  _spdTrgt = spd * _spdRes;
  _mode = STP_SPD_MODE;
}

int32_t Stepper::getSpeed()
{
  return _spd;
}

int32_t Stepper::getPos()
{
  return _pos;
}
