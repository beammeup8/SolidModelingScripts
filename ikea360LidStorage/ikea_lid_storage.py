#! /usr/bin/env python

from solid2 import *

#change this value to change the number of lids that can be stored
slots = 6


# Change these values to optimize for other lids/ uses
# Slicer should treat these as mm
width = 100
spacing = 25
height = 50
matThickness = 5


sideLen = slots*spacing
side = left(matThickness)(cube(2*matThickness, sideLen, matThickness))
peg = cylinder(r=matThickness, h=height)

# piece to connect the sides
connPiece = left(width)(cube(width, matThickness, matThickness/2))

# add pegs
for i in range(slots + 1):
  side = side + forward(i*spacing)(peg)

# add the second side
obj = side + left(width)(side)

# add the connection pieces
for i in range(slots):
  obj = obj + forward((i*spacing) + spacing/2)(connPiece)

obj.save_as_scad("ikea360LidStorage/ikea360LidStorage.scad")