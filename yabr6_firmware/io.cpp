#include "stdinc.h"

#include <WiFiUdp.h>

struct
{
  uint16_t timer;
  uint8_t channel[6];
  int32_t data[6];
} dataout;

struct
{
  uint8_t type;
  int32_t data;
} datain;

IPAddress target(192, 168, 4, 2);
WiFiUDP udp;
static uint8_t subLoop;
static bool measurementOut;

void setupInputOutput()
{
  for(int i = 0; i < 5; ++i) dataout.channel[i] = '1' + i;
  dataout.channel[5] = '1';
  udp.begin(23456);
}

void loopInputOutput()
{
  subLoop++;
  subLoop %= 5;

  #define ENTRY(ID, var, rightshift, resolution, unit, name, minvalue, maxvalue)\
  case ID: dataout.data[c] = var >> rightshift; break;

  if(subLoop == 0)
  {
    if(measurementOut)
    {
      uint8_t c;
      for(c = 0; c < 5; c++)
      {
        switch(dataout.channel[c])
        {
        #include "mtable.h"
        default: dataout.data[c] = -1; break;
        }
      }
      switch(dataout.channel[c])
      {
        #include "ptable.h"
        default: dataout.data[c] = -1; break;
      }
      udp.beginPacket(target, 1234);
      udp.write((uint8_t *)&dataout, sizeof(dataout));
      udp.endPacket();
    }
  }


  #define ENTRY(ID, var, rightshift, resolution, unit, name, minvalue, maxvalue)\
  case ID: var += datain.data; break;

  int cb = udp.parsePacket();
  if (cb == sizeof(datain))
  {
    udp.read((uint8_t*)&datain, cb);
    switch(datain.type)
    {
      case 'r':
      {
        ESP.restart();
        break;
      }
      case 'c':
      {
        dataout.channel[datain.data >> 8] = datain.data & 0xff;
        break;
      }
      case 'p':
      {
        dataout.channel[5] = datain.data;
        break;
      }
      case 'i':
      {
        switch(dataout.channel[5])
        {
          #include "ptable.h"
        }
        break;
      }
      case 'm':
      {
        measurementOut = true;
        break;
      }
      case 's':
      {
        measurementOut = false;
        break;
      }
      case 'x':
      {
        measurementOut = !measurementOut;
        break;
      }
    }
  }

  sensorData.cpu[subLoop] = (uint32_t)clk.value() * 1000 / clk.base();
}
