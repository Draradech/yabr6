#include "stdinc.h"


#define ATAN2_CORDIC_ITERATIONS 8
#define ANGLE(x) (int16_t)((x * 100.0)+0.5)

/*
CORDIC rotate until angle is smaller than atan(2 ^ -ATAN2_CORDIC_ITERATIONS), then add half of last rotation
iterations  maximum error
0           22,50 °
1           13,29 °
2           7,02 °
3           3,57 °
4           1,80 °
5           0,90 °
6           0,47 °
7           0,24 °
8           0,13 °
9           0,07 °
10          0,06 °
11          0,04 °
*/

static const int16_t atan2_table[ATAN2_CORDIC_ITERATIONS + 1] =
{
#if (ATAN2_CORDIC_ITERATIONS >= 0)
   ANGLE(45.000), // atan(1/1)
#endif
#if (ATAN2_CORDIC_ITERATIONS >= 1)
   ANGLE(26.565), // atan(1/2)
#endif
#if (ATAN2_CORDIC_ITERATIONS >= 2)
   ANGLE(14.036), // atan(1/4)
#endif
#if (ATAN2_CORDIC_ITERATIONS >= 3)
   ANGLE( 7.125), // atan(1/8)
#endif
#if (ATAN2_CORDIC_ITERATIONS >= 4)
   ANGLE( 3.576), // atan(1/16)
#endif
#if (ATAN2_CORDIC_ITERATIONS >= 5)
   ANGLE( 1.790), // atan(1/32)
#endif
#if (ATAN2_CORDIC_ITERATIONS >= 6)
   ANGLE( 0.895), // atan(1/64)
#endif
#if (ATAN2_CORDIC_ITERATIONS >= 7)
   ANGLE( 0.448), // atan(1/128)
#endif
#if (ATAN2_CORDIC_ITERATIONS >= 8)
   ANGLE( 0.224), // atan(1/256)
#endif
#if (ATAN2_CORDIC_ITERATIONS >= 9)
   ANGLE( 0.112), // atan(1/512)
#endif
#if (ATAN2_CORDIC_ITERATIONS >= 10)
   ANGLE( 0.056), // atan(1/1024)
#endif
#if (ATAN2_CORDIC_ITERATIONS >= 11)
   ANGLE( 0.028), // atan(1/2048)
#endif
};

int16_t atan2_cordic(int16_t y, int16_t x)
{
   int16_t result = 0;

   uint16_t ux_temp;
   uint16_t ux;
   uint16_t uy;

   if(x == 0 && y == 0)
   {
      return 0;
   }

   // > 180
   if(y < 0)
   {
      y = -y;
      x = -x;
      result -= ANGLE(180.000);
   }

   // > 90
   if(x < 0)
   {
      ux = y;
      uy = -x;
      result += ANGLE(90.000);
   }
   else
   {
      ux = x;
      uy = y;
   }

   // increase components to increase accuracy
   // (so max component length is (1 << 15) algorithm may double it again, so upper bound is (1 << 16))
   while(ux < (1 << 14) && uy < (1 << 14))
   {
      ux = ux << 1;
      uy = uy << 1;
   }

   uint8_t iter;
   for(iter = 0; iter <= ATAN2_CORDIC_ITERATIONS; ++iter)
   {
      if(uy > (ux >> iter))
      {
         ux_temp = ux;
         ux = ux + (uy >> iter);
         uy = uy - (ux_temp >> iter);
         result += atan2_table[iter];
      }
   }

   result += atan2_table[iter - 1] >> 1;
   return result;
}
