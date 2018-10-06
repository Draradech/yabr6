#ifdef _DEFINE_RAM_VARS_
#define global
#else
#define global extern
#endif

typedef struct SRawSensorData
{
  int16_t voltage;
  int16_t acX;
  int16_t acY;
  int16_t acZ;
  int16_t gyX;
  int16_t gyY;
  int16_t gyZ;
  int16_t dist[3];
  int16_t cpu[5];
} SSensorData;

typedef struct
{
  int32_t angleAcc;       // LSB: 0.0001 °
  int32_t angleGyro;      // LSB: 0.0001 °
  int32_t angleFused;     // LSB: 0.0001 °
} SAttitude;

typedef struct
{
  int16_t angleRate;
  int16_t subAngleRate;
  int16_t angle;
} SSensorOffsets;

typedef struct
{
  bool deactivated;
  bool tempDisabled;
} SActuator;

typedef struct
{
  int16_t angleP;
  int16_t angleD;
  int16_t angleWP;
  int16_t speedP;
  int16_t speedI;
} SControlPara;

typedef struct
{
  int32_t targetSpeed;
  int32_t currentSpeed;
  int32_t speedDeviation;
  int32_t iPartSpeed;
  int32_t pPartSpeed;
  int32_t targetAngle;
  int32_t angleDeviation;
  int32_t pPartAngle;
  int32_t dPartAngle;
  int32_t acc;
  int32_t dAcc;
  int32_t movement;
} SControlState;

global SSensorData sensorData;
global SAttitude attitude;
global SSensorOffsets sensorOffsets;
global SActuator actuator;
global SControlPara controlPara;
global SControlState controlState;

extern Clock1 clk;
extern Stepper stp;
extern Stepper stp2;

