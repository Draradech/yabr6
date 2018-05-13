#pragma once

#include <string>

typedef struct
{
    unsigned char id;
    unsigned char rightshift;
    float resolution;
    std::string unit;
    std::string name;
    float minvalue;
    float maxvalue;
} measurement_t;

extern measurement_t measurementTable[];
extern measurement_t parameterTable[];