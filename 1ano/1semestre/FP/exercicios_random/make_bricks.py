# We want to make a row of bricks that is goal inches long. We have a number of small bricks (1 inch each) and big bricks (5 inches each). 
# Return True if it is possible to make the goal by choosing from the given bricks. 
# This is a little harder than it looks and can be done without any loops.

# make_bricks(3, 1, 8) → True
# make_bricks(3, 1, 9) → False
# make_bricks(3, 2, 10) → True


def make_bricks(small, big, goal):
  for x in range(1, big+1):
    x *= 5
    for y in range(1, small+1):  
      if (x + y) == goal:
        return True
  return False


# ! 2ND OPTION
def make_bricks(small, big, goal):
  totalBigBricks = big * 5
  totalSmallBricks = small 
  totalBricks = totalBigBricks + totalSmallBricks
  
  if totalBricks < goal:
    return False
  elif totalBricks > goal:
    y = goal % 5
    if totalSmallBricks < y:
      return False
    else:
      return True
  else:
    return True