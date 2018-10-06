#include <Arduino.h>

#include "clock1.h"
#include "stepper.h"
#include "ram.h"

#define UPDATE_USEC 100
#define MAINLOOP_USEC 2000
#define LOOP_TIME_MS 2
#define LOOPS_PER_SECOND 500
#define MS_TO_LOOP(ms) ((ms) / LOOP_TIME_MS)

#define MAX(a, b) ((a) > (b) ? (a) : (b))
#define MIN(a, b) ((a) < (b) ? (a) : (b))
#define LIMIT(x, min, max)  (((x) < (min)) ? (min) : (((x) < (max)) ? (x) : (max)))

#define PT1(new_val, old_val, time_constant_ms) ((old_val) + ((new_val) - (old_val)) / MS_TO_LOOP(time_constant_ms))
   
void isrStepper();
void isrUltra();

void setupClock();
void setupControl();
void setupInputOutput();
void setupImu();
void setupLed();
void setupOta();
void setupStepper();
void setupUltra();
void setupWifi();

void loopAttitude();
void loopControl();
void loopInputOutput();
void loopImu();
void loopOta();
void loopStepper();
void loopUltra();

void ledColor(bool r, bool g, bool b);
int16_t atan2_cordic(int16_t y, int16_t x);

