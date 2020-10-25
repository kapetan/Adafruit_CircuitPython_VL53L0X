MicroPython VL53L0X
===================

MicroPython driver for the VL53L0X distance sensor.

Forked from `Adafruit CircuitPython VL53L0X <https://github.com/adafruit/Adafruit_CircuitPython_VL53L0X>`_ and modified to work with MicroPython 1.12.

Usage
=====

.. code-block:: python

    import machine
    import vl53l0x

    # Initialize I2C bus and sensor.
    i2c = machine.I2C(1, freq = 400000)
    vl53 = vl53l0x.VL53L0X(i2c)

    # Optionally set the timing budget. A timing budget of 20 milliseconds
    # results in faster but less accurate measurements.
    # For more accuracy set the timing budget to 200 milliseconds.
    # The default is around 33 milliseconds.
    vl53.measurement_timing_budget = 20000 # microseconds

    # Optionally start continuous measurement mode.
    vl53.start_continuous()

    while True:
        print("Range: {0}mm".format(vl53.range))
        time.sleep(1)

Build
=====

Build **.mpy** files locally:

.. code-block:: shell

    make virtual
    $(make virtual-activate)
    make requirements-install
    make build

Usage Example
=============

See usage in the `examples/vl53l0x_simpletest.py <https://github.com/kapetan/MicroPython_VL53L0X/blob/master/examples/vl53l0x_simpletest.py>`_ file.
