//ENTRY(ID,  var,              rightshift,       resolution, unit,  name,                        minvalue,    maxvalue  )

ENTRY('1', controlState.targetSpeed,    0,       3.375e-4,   "m/s", "speed target",                  -4.0,         1.0  )
ENTRY('2', controlState.currentSpeed,   0,       3.375e-4,   "m/s", "speed current",                 -4.0,         1.0  )
ENTRY('3', controlState.targetAngle,    0,       0.0001,     "deg", "angle target",                 -15.0,        35.0  )
ENTRY('4', attitude.angleFused,         0,       0.0001,     "deg", "angle current",                -15.0,        35.0  )
ENTRY('5', sensorData.voltage,          0,       0.001,        "V", "battery voltage",               12.0,        17.0  )
ENTRY('6', sensorData.dist[0],          0,       1.92,        "cm", "distance right",                 0.0,       400.0  )
ENTRY('7', sensorData.dist[1],          0,       1.92,        "cm", "distance center",                0.0,       400.0  )
ENTRY('8', sensorData.dist[2],          0,       1.92,        "cm", "distance left",                  0.0,       400.0  )

ENTRY('q', sensorData.acX,              0,       6.1035e-5,    "g", "acc X",                         -2.0,         2.0  )
ENTRY('w', sensorData.acY,              0,       6.1035e-5,    "g", "acc Y",                         -2.0,         2.0  )
ENTRY('e', sensorData.acZ,              0,       6.1035e-5,    "g", "acc Z",                         -2.0,         2.0  )
ENTRY('r', sensorData.gyX,              0,       0.00763,  "deg/s", "rot X",                       -250.0,       250.0  )
ENTRY('t', sensorData.gyY,              0,       0.00763,  "deg/s", "rot Y",                       -250.0,       250.0  )
ENTRY('z', sensorData.gyZ,              0,       0.00763,  "deg/s", "rot Z",                       -250.0,       250.0  )
ENTRY('u', stp.getSpeed(),              0,       3.375e-8,   "m/s", "speed 1",                       -4.0,         1.0  )
ENTRY('i', stp2.getSpeed(),             0,       3.375e-8,   "m/s", "speed 2",                       -4.0,         1.0  )

ENTRY('a', sensorData.cpu[0],           0,       0.1,          "%", "cpu load 0",                     0.0,       100.0  )
ENTRY('s', sensorData.cpu[1],           0,       0.1,          "%", "cpu load 1",                     0.0,       100.0  )
ENTRY('d', sensorData.cpu[2],           0,       0.1,          "%", "cpu load 2",                     0.0,       100.0  )
ENTRY('f', sensorData.cpu[3],           0,       0.1,          "%", "cpu load 3",                     0.0,       100.0  )
ENTRY('g', sensorData.cpu[4],           0,       0.1,          "%", "cpu load 4",                     0.0,       100.0  )

ENTRY('h', attitude.angleAcc,           0,       0.0001,     "deg", "angle acc",                    -15.0,        35.0  )
ENTRY('j', attitude.angleGyro,          0,       0.0001,     "deg", "angle gyro",                   -15.0,        35.0  )
ENTRY('k', sensorOffsets.angleRate,     0,       0.05,     "deg/s", "sensor offset angle rate",      -5.0,         5.0  )

ENTRY('y', controlState.speedDeviation, 0,       3.375e-4,   "m/s", "cs speedDeviation",             -2.0,         2.0  )
ENTRY('x', controlState.iPartSpeed,     0,       0.0001,     "deg", "cs iPartSpeed",                -10.0,        10.0  )
ENTRY('c', controlState.pPartSpeed,     0,       0.0001,     "deg", "cs pPartSpeed",                -10.0,        10.0  )
ENTRY('v', controlState.angleDeviation, 0,       0.0001,     "deg", "cs angleDeviation",            -10.0,        10.0  )
ENTRY('b', controlState.pPartAngle,     0,       1,     "step/s/s", "cs pPartAngle",             -10000.0,     10000.0  )
ENTRY('n', controlState.dPartAngle,     0,       1,     "step/s/s", "cs dPartAngle",             -10000.0,     10000.0  )
ENTRY('m', controlState.acc,            0,       1,     "step/s/s", "cs acc",                    -10000.0,     10000.0  )
ENTRY(',', controlState.dAcc,           0,       1,     "step/s/s", "cs dAcc",                   -30000.0,     30000.0  )
ENTRY('.', controlState.movement,       0,       1,    "step/1.5s", "cs movement",                    0.0,      3000.0  )

ENTRY(0,   sensorData.voltage,          0,       0.0,          "-", "end of table",                   0.0,         0.0  )
