#! /usr/bin/env python

from solid2 import *

scale = cube(9.5,9.5,2)
step = 10

max_x = 300
max_y = 300

obj = scale

for x in range(0, max_x, step):
   for y in range(0, max_y, step):
    obj += scale.right(x).forward(y)

obj.save_as_scad("customArmour/basicArmourOutputTest.scad")