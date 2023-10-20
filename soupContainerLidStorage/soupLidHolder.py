#! /usr/bin/env python

from solid2 import *

# lid size
# assumed to be mm
lid_dim = 123
thickness = 11
count = 15

# parameters unrelated to lid
mat_thickness = 5
skirt_mod = 0.75

inner_r = lid_dim/2
outer_r = inner_r + mat_thickness

base = cylinder(r=outer_r, h=mat_thickness) - \
    cylinder(r=inner_r * skirt_mod, h=mat_thickness)

# create the vertical pice to keep the lids in place
vert_h = thickness * count
vertical = cylinder(r=inner_r + mat_thickness, h=vert_h) - \
    cylinder(r=inner_r, h=vert_h)

neg_left_shift = inner_r/2
neg_back_shift = inner_r*1.25
neg_len = lid_dim * 1.5
vertical_negSpace = cube(outer_r, neg_len, vert_h).left(neg_left_shift).back(neg_back_shift)

# add champher to the top of the negative space
neg_cyl = cylinder(r=mat_thickness, h=neg_len).rotateX(-90)
top_champh = (cube(mat_thickness, neg_len, mat_thickness) - neg_cyl) .up(vert_h - mat_thickness).left(neg_left_shift + mat_thickness).back(neg_back_shift)
vertical_negSpace += top_champh + top_champh.mirrorX()

# remove the cutouts from the verticals
vertical -= vertical_negSpace + vertical_negSpace.rotate(90)

obj = base + vertical

obj.save_as_scad("soupContainerLidStorage/soupLidHolder.scad")
