#include <Arduino.h>
#include "clock1.h"

static uint8_t clock1_counter;
static uint8_t clock1_trigger;
static uint16_t clock1_factor = 1;
static void (*clock1_callback)();
static uint32_t clock1_base;

hw_timer_t * timer = NULL;

Clock1::Clock1()
{
}

void Clock1::expireFactor(uint16_t factor)
{
   clock1_factor = factor;
}

void Clock1::registerCallback(void (*callback)())
{
   clock1_callback = callback;
}

void IRAM_ATTR clock1_isr()
{
  clock1_counter += 1;
  if(clock1_counter >= clock1_factor)
  {
    clock1_trigger = 1;
    clock1_counter = 0;
  }
  if(clock1_callback) clock1_callback();
}

void Clock1::period(uint32_t usec)
{
  clock1_base = usec;
  timer = timerBegin(0, 80, true);
  timerAttachInterrupt(timer, &clock1_isr, true);
  timerAlarmWrite(timer, usec, true);
  timerAlarmEnable(timer);
}

void Clock1::rate(uint16_t hz)
{
  period(1000000 / hz);
}

uint32_t Clock1::value()
{
  return clock1_base * ((clock1_trigger?clock1_factor:0) + clock1_counter) + timerRead(timer);
}

uint32_t Clock1::base()
{
  return clock1_base * clock1_factor;
}

uint8_t IRAM_ATTR Clock1::counter()
{
  return clock1_counter;
}

boolean Clock1::expired()
{
  boolean ret = false;

  if(clock1_trigger)
  {
    clock1_trigger = 0;
    ret = true;
  }

  return ret;
}
