#include <Arduino.h>

#include "Clock1.h"
#include "Stepper.h"

#define MAX(a, b) ((a) > (b) ? (a) : (b))
#define MIN(a, b) ((a) < (b) ? (a) : (b))

#define UPDATE_USEC 100
#define MAINLOOP_USEC 2000

void isrStepper();
void isrUltra();

void setupClock();
void setupInputOutput();
void setupImu();
void setupOta();
void setupStepper();
void setupUltra();
void setupWifi();

void loopControl();
void loopInputOutput();
void loopImu();
void loopOta();
void loopUltra();

extern Clock1 clk;
extern Stepper stp;
extern Stepper stp2;
extern uint16_t ultrasave[3];
extern int16_t AcX, AcY, AcZ, Tmp, GyX, GyY, GyZ;
extern int32_t adc;
extern int16_t tspeed1, tspeed2;
