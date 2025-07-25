#! /usr/bin/env python

from solid2 import *
from buttonUtil import *

def generateProtestButton(words, textSize, totalHeight, isAnti):
  height = totalHeight/2
  diameter = (len(words) + 1) * textSize
  boarderThick = textSize/2
  gap = 0.15

  textObj = (extrudedText(words, height * 0.75, textSize))
  
  obj, backgroundArea, borderObj = createParts(textObj, diameter, boarderThick, height, isAnti, gap)
  assembly = obj.color((0,0,0)) + backgroundArea.color((1, 1, 1)).up(height) + borderObj.color((1,0,0)).up(height)

  outputPieces(obj, backgroundArea, borderObj, assembly, isAnti, words, diameter * 1.25)


if __name__ == "__main__":
  import argparse
  parser = argparse.ArgumentParser(
    prog = 'Multi Part Protest Button Generator',
    description = "Generates protest buttons that can be printed in 3 parts for a multi color effect"
  )
  defaultThick = 6
  defaultFontSize = 9

  parser.add_argument('text', help='text to output on the button')
  parser.add_argument('-t', metavar='total thickness', help=f'End thickness of the assembled model in millimeters, default is {defaultThick}')
  parser.add_argument('-f', metavar='font size', help=f'Size of font to use is text is used. Default is {defaultFontSize}')
  parser.add_argument('--anti', action="store_true", help="Make it an anti button")

  args = parser.parse_args()

  thickness = args.t if args.t else defaultThick
  fontSize = args.f if args.f else defaultFontSize

  generateProtestButton(args.text, fontSize, thickness, args.anti)