#! /usr/bin/env python

from solid2 import *
import math

title_font_name = 'eufm10'
title_font_size = 8

label_font_name = 'UbuntuCondensed-Regular'
lable_font_size = 3
dot_size = 0.5


# assumed to be mm
thickness = 5
boarder_width = 8
spacing_width = 7
d6_width = 16
d20_width = 24

textDepth = 0.25
cutoutDepth = thickness * 0.75

edge_round = 0.5


width = (boarder_width * 2) + (3 * d6_width) + (3 * spacing_width) + d20_width
height = (boarder_width * 2) + (3 * d6_width) + (3 * spacing_width) + title_font_size

title_text = "Spell Slot Tracker"
slotCounts = [4, 3, 3, 3, 3 , 2, 2, 1, 1]
dcText = "Spell Save DC"
attackText = "Spell Attack Bonus"

def extrudedText(textStr, thickness, fontSize, fontName):
  text_obj = text(textStr, size=fontSize, font=fontName, valign="center", halign="center")
  origText = linear_extrude(height=thickness)(text_obj)
  return origText

def generateNSidedPolygon(n, sideLen, height):
  r = sideLen/(2*math.sin(math.pi/n))

  points = []
  for i in range(n):
    # Shift point
    theta = 2 * math.pi * i/n
    x = r * math.cos(theta)
    y = r * math.sin(theta)
    points.append((x, y, 0))

  flat = polygon(points=points).rotate(180/n)
  return linear_extrude(height=height)(flat)


def addWiggleRoom(obj, gap):
  return minkowski()(obj, cube(gap, gap, gap))

def roundEdges(obj, r):
  return minkowski()(obj, sphere(r))

def generateBase():
  base = cube(width, height, thickness)
  return roundEdges(base, 1)

def getTitleComponent():
  title = extrudedText(title_text, thickness, title_font_size, title_font_name)
  title = title.up(thickness-textDepth)
  title = title.forward(height - title_font_size - (boarder_width/2))
  title = title.right(width/2)
  return title

def generateDots(count):
  dot = cylinder(dot_size, thickness)
  shift = dot_size * 2
  dots = dot
  for i in range(count):
    dots += dot.right(i * shift)

  return dots

def generateLabels():
  labels = []
  i = 1
  for count in slotCounts:
    curr = extrudedText(str(i), thickness, lable_font_size, label_font_name)
    curr += generateDots(count).right((count * dot_size * 2) + dot_size)
    i += 1
    labels.append(curr.right(d6_width/2).back(lable_font_size).up(thickness - textDepth))
  return labels

def generateSpellSlotCutouts():
  labels = generateLabels()
  die_hole = cube(d6_width, d6_width, d6_width).up(thickness - cutoutDepth)
  die_hole = roundEdges(die_hole, edge_round)

  holesList = []
  for label in labels:
    hole = die_hole + label
    holesList.append(hole)

  move_by = spacing_width + d6_width
  holes = die_hole
  index = 0
  for y in range(2, -1, -1):
    for x in range(3):
      holes += holesList[index].right(x * move_by).forward(y * move_by)
      index +=1

  holes = holes.forward(boarder_width).right(boarder_width)
  return holes

def generateStatSlots():
  width = d20_width/3
  hole = generateNSidedPolygon(8, width, thickness).up(thickness - cutoutDepth)
  hole = roundEdges(hole, edge_round)
  hole = hole.forward(spacing_width + width)

  spellSave = hole + extrudedText(dcText, thickness, lable_font_size, label_font_name).up(thickness - textDepth)
  attackBonus = hole + extrudedText(attackText, thickness, lable_font_size, label_font_name).up(thickness - textDepth)

  result = spellSave + attackBonus.forward(boarder_width * 3 + width)

  result = result.right(2 * boarder_width + (3 * (d6_width + spacing_width)) + spacing_width/2)
  result = result.forward(boarder_width + spacing_width/2)

  return result

base = generateBase()

title = getTitleComponent()
spellSlots = generateSpellSlotCutouts()
statSlots = generateStatSlots()

obj = base - title - spellSlots - statSlots

obj.save_as_scad("spellSlotTracker.scad")
