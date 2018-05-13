#include "stdinc.h"

uint8_t state[3] = {0};
uint16_t ultra[3] = {0};
uint16_t ultrasave[3] = {0};
uint8_t j = 0;

void setupUltra()
{
  pinMode(32, OUTPUT);
  pinMode(33, INPUT);
  pinMode(34, INPUT);
  pinMode(35, INPUT);
}

void IRAM_ATTR isrUltra()
{
  uint8_t cnt = clk.counter();

  if(cnt == 0 && state[0] == 0)
  {
    digitalWrite(32, HIGH);
    ultra[0] = 0;
    ultra[1] = 0;
    ultra[2] = 0;
    state[0] = 1;
    state[1] = 1;
    state[2] = 1;
  }
  else if(cnt == 1)
  {
    digitalWrite(32, LOW);
  }

  for(uint8_t index = 0; index < 3; index++)
  {
    uint8_t dr = digitalRead(index+33);

    if(state[index] == 1 && dr) state[index] = 2;

    if(state[index] == 2 && !dr)
    {
      state[index] = 3;
      ultrasave[index] = (ultra[index] <= ultrasave[index]) ? ultra[index] : (ultrasave[index] + 1);
      ultrasave[index] = MIN(ultrasave[index], 100);
    }

    if(state[index] == 2) ultra[index]++;
  }
}

void loopUltra()
{
  j++;
  j %= 30;
  if(j == 0)
  {
    state[0] = 0;
    state[1] = 0;
    state[2] = 0;
  }
}
