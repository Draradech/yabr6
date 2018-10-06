#include "stdinc.h"

#include <WiFi.h>

const char* ssid = "yabr6";
const char* passwd = "yabryabr";

void setupWifi()
{
  WiFi.mode(WIFI_AP);
  WiFi.softAP(ssid, passwd);
}
