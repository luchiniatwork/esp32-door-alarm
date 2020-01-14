[blackdog]: https://github.com/luchiniatwork/blackdog

# esp32-door-alarm

This is a simple door alarm project built on the highly experimental
[Fennel/Blackdog][blackdog] setup.

## Basic Functional Spec

1. A door contact switch detects if a door is open.
2. If the door is open, a timer starts for a TBD amount of minutes.
3. If the door is closed once before the TBD amount of minutes is
   reached, the timer is discarded.
4. If the door remains open and the TBD amount of minutes is reached,
   then an alarm rings.
5. A button switch can be pressed when the alarm is ringing to restart
   the timer.

## Auxiliary Spec

1. Battery level detection: if the battery is below a TBD threshold,
   an audible alarm different than the basic functional alarm is
   triggered.
2. This alarm can't be reset unless the batteries are changed.

## Overarching Spec

1. All alarm events must trigger push notification to a series of
   hard coded users
2. Deep sleep with a wake up on door events or battery monitoring
   events is desirable
