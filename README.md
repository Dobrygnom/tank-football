# tank-football

This project is a complete, 3-level system that allows to models tanks playing football and also works with real toy-tanks.

Tanks behavior is controlled with Fuzzy-logic that can be modified by providing new i/o schemes to fuzzy controller.

Top level is responsible for processing image of tanks and battleground from webcam, handling cycles and tunnels data from fuzzy to low-level code.

Low level code controls tanks using two Infineon microcontrollers that are physically connected to tanks' joystics.

Fuzzy logic defines tanks' behavior and by default makes them play football.
