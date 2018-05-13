//ENTRY(ID,  var,              rightshift,     resolution,    unit,    name,                                  minvalue,   maxvalue  )

ENTRY('1', stp.getSpeed(),            0,       1.0/10000, "",     "spd 1",                     -10000.0,     10000.0      )
ENTRY('2', stp.getPos(),              0,       1,         "",     "pos 1",                     -10000.0,     10000.0      )
ENTRY('3', stp2.getSpeed(),           0,       1.0/10000, "",     "spd 2",                     -10000.0,     10000.0      )
ENTRY('4', stp2.getPos(),             0,       1,         "",     "pos 2",                     -10000.0,     10000.0      )
ENTRY('5', promilleMax,               0,       0.1,      "%",     "cpu load",                       0.0,       100.0      )
ENTRY('h', promilleMin,               0,       0.1,      "%",     "cpu load min",                   0.0,       100.0      )
ENTRY('i', adc,                       0,       0.001,    "V",     "adc",                             0.0,       20.0      )
ENTRY('6', ultrasave[0],              0,       1.92,    "cm",     "ultra 1",                        0.0,       100.0      )
ENTRY('7', ultrasave[1],              0,       1.92,    "cm",     "ultra 2",                        0.0,       100.0      )
ENTRY('8', ultrasave[2],              0,       1.92,    "cm",     "ultra 3",                        0.0,       100.0      )
ENTRY('a', AcX,                       0,       1,         "",     "AcX",                       -30000.0,     30000.0      )
ENTRY('b', AcY,                       0,       1,         "",     "AcY",                       -30000.0,     30000.0      )
ENTRY('c', AcZ,                       0,       1,         "",     "AcZ",                       -30000.0,     30000.0      )
ENTRY('d', GyX,                       0,       1,         "",     "GyX",                       -30000.0,     30000.0      )
ENTRY('e', GyY,                       0,       1,         "",     "GyY",                       -30000.0,     30000.0      )
ENTRY('f', GyZ,                       0,       1,         "",     "GyZ",                       -30000.0,     30000.0      )
ENTRY('g', Tmp,                       0,       1,         "",     "Tmp",                       -30000.0,     30000.0      )
ENTRY(0,   promille,                  0,       0.0,      "-",     "Ende der Tabelle",               0.0,         0.0      )
