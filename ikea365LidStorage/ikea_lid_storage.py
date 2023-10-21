#! /usr/bin/env python

from solid2 import *
import math

#change this value to change the number of lids that can be stored
slots = 6


# Change these values to optimize for other lids/ uses
# Slicer should treat these as mm
width = 100
spacing = 25
height = 75
matThickness = 5


sideLen = slots*spacing
side = left(matThickness)(cube(2*matThickness, sideLen, matThickness))
peg = cylinder(r=matThickness, h=height)

# piece to connect the sides
diag_len = sqrt(width**2 + spacing**2)
theta = math.degrees(atan(spacing/width))
diag = cube(diag_len, matThickness, matThickness/2).left(width)
connPiece = diag.rotateZ(theta).forward(spacing) + diag.rotateZ(-theta)

# add pegs
for i in range(slots + 1):
  side = side + peg.forward(i * spacing)

# add the second side
obj = side + left(width)(side)

# add the connection pieces
for i in range(slots):
  obj = obj + connPiece.forward((i*spacing) - matThickness/2)

obj.save_as_scad("ikea365LidStorage/ikea365LidStorage.scad")