#include "stdinc.h"

#include <ArduinoOTA.h>

static bool done = false;
static int16_t rebootDelay = 500;

void setupOta()
{
  ArduinoOTA.setHostname("yabr6");

  ArduinoOTA.onStart([]() {
    clk.registerCallback(NULL);
  });

  ArduinoOTA.onEnd([]() {
    done = true;
  });

  ArduinoOTA.begin();
}

void loopOta()
{
  ArduinoOTA.handle();
  if(done)
  {
    if(--rebootDelay == 0)
    {
      ESP.restart();
    }
  }
}
