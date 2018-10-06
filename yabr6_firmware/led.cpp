#include "stdinc.h"

void setupLed()
{
  pinMode(17, OUTPUT);
  pinMode(18, OUTPUT);
  pinMode(19, OUTPUT);
  digitalWrite(17, HIGH);
  digitalWrite(18, LOW);
  digitalWrite(19, HIGH);
}

void ledColor(bool r, bool g, bool b)
{
  digitalWrite(17, !r);
  digitalWrite(18, !g);
  digitalWrite(19, !b);
}
