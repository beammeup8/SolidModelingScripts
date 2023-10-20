from solid2 import *

def getScale(name):
  match name:
    case "square":
      scale = cube(9.5,9.5,2)
      step = 10
      return (scale, step, step)
    case _:
      print("no scale by that name")