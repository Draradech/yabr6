#include <string>
#include "MeasurementTable.h"

#define ENTRY(ID, var, rightshift, resolution, unit, name, minvalue, maxvalue) \
{(ID), (rightshift), (resolution), (unit), (name), (minvalue), (maxvalue)},

measurement_t measurementTable[] =
{
    #include "../yabr6_firmware/mtable.h"
};

measurement_t parameterTable[] =
{
	#include "../yabr6_firmware/ptable.h"
};
