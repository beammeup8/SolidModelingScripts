from solid2 import *
from buttonUtil import *

def naziLogo(diameter, lineThick, height):
  lineLen = diameter/4
  lineH = cube(lineLen, lineThick, height)
  lineV = cube(lineThick, lineLen, height)
  arm = lineV + lineH.forward(lineLen - lineThick)
  logo = arm + arm.rotateZ(90) + arm.rotateZ(180) + arm.rotateZ(270)
  return logo

def antiNaziLogoButton(diameter, totalHeight):
  height = totalHeight/2
  lineThick = diameter/10
  isAnti = True
  gap = 0.15

  designObj = naziLogo(diameter, lineThick, height)
  
  obj, backgroundArea, borderObj = createParts(designObj, diameter, lineThick, height, isAnti, gap)
  assembly = obj.color((0,0,0)) + backgroundArea.color((1, 1, 1)).up(height) + borderObj.color((1,0,0)).up(height)

  outputPieces(obj, backgroundArea, borderObj, assembly, isAnti, "naziLogo", diameter * 1.25)

antiNaziLogoButton(30, 5)
