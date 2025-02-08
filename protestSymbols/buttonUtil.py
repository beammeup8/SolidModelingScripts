from solid2 import *

def extrudedText(textStr, thickness, fontSize):
  text_obj = text(textStr, size=fontSize, font='Mic 32Bold', valign="center", halign="center")
  origText = linear_extrude(height=thickness)(text_obj)
  return origText

def getBoarder(diameter, thickness, height, strikeThrough):
  border = cylinder(diameter/2, h = height) - cylinder(diameter/2 - thickness, h = height)
  if strikeThrough:
    strike = cube(diameter - thickness, thickness, height).back(thickness/2).left(diameter/2 - thickness/2).rotateZ(-45)
    border += strike
  
  return border

def createParts(designObj, diameter, borderThick, height, isAnti, wiggleGap):
  base = cylinder(r = diameter/2, h = height).down(height)
  borderObj = getBoarder(diameter, borderThick, height, isAnti)
  wiggleBorder = addWiggleRoom(borderObj, wiggleGap)
  mainObj = (base + designObj - wiggleBorder).up(height)
  backgroundArea = cylinder(r = diameter/2 - borderThick, h = height * 0.5)- addWiggleRoom(designObj, wiggleGap) - wiggleBorder
  return mainObj, backgroundArea, borderObj

def addWiggleRoom(obj, gap):
  return minkowski()(obj, cube(gap, gap, gap))

def roundEdges(obj, r):
  return minkowski()(obj, sphere(r))

def outputPieces(main, background, border, assembly, isAnti, name, spacing):
  filePrefix = f"ANTI_{name}" if isAnti else name
  main.save_as_scad(f"protestSymbols/{filePrefix}_mainPiece.scad")
  border.save_as_scad(f"protestSymbols/{filePrefix}_boarder.scad")
  background.save_as_scad(f"protestSymbols/{filePrefix}_background.scad")
  assembly.save_as_scad(f"protestSymbols/{filePrefix}_assembly.scad")

  allObjs = main + border.left(spacing) + background.right(spacing)
  allObjs.save_as_scad(f"protestSymbols/{filePrefix}_allPieces.scad")