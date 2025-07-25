#! /usr/bin/env python

from solid2 import *
import math

height = 56
width = 230
length = 190
matThick = 5
extraSpace = 10

gap = extraSpace/2
flangeWidth = length * 0.75
flangeLength = width/4

container = cube(width, length, height)

spacer = cube(width + extraSpace, length + extraSpace, height + extraSpace).up(matThick).right(matThick)
bracket = cube(flangeLength + matThick + extraSpace, flangeWidth + matThick + extraSpace, height + (2 * matThick) + extraSpace).forward(0.25 * length) - spacer

obj = container.up(gap + matThick).right(gap + matThick) + bracket

obj.save_as_scad("organizerContainerStacker/ALL_PIECES_organizerContainerStacker.scad")