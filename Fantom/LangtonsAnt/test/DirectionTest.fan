
class DirectionTest : Test
{
  Void testCanTurnLeft() 
  {
    assertCanTurnLeft(0,1,-1,0);
    assertCanTurnLeft(-1,0,0,-1);
    assertCanTurnLeft(0,-1,1,0);
    assertCanTurnLeft(1,0,0,1);
  }
  
  Void assertCanTurnLeft(Int fx, Int fy, Int tx, Int ty) 
  {
    direction := Direction(fx, fy);
    newDirection := direction.turnLeft();
    verifyEq(
      newDirection, 
      Direction(tx, ty),
      "Expected $tx, $ty, actual $newDirection.dx, $newDirection.dy");
  }
  
  Void testCanTurnRight() 
  {
    assertCanTurnRight(0,1,1,0);
    assertCanTurnRight(1,0,0,-1);
    assertCanTurnRight(0,-1,-1,0);
    assertCanTurnRight(-1,0,0,1);
  }

  Void assertCanTurnRight(Int fx, Int fy, Int tx, Int ty) 
  {
    direction := Direction(fx, fy);
    newDirection := direction.turnRight();
    verifyEq(
      newDirection, 
      Direction(tx, ty),
      "Expected $tx, $ty, actual $newDirection.dx, $newDirection.dy");
  }

  Void testComputesNewPosition() 
  {
    direction := Direction(1, 2);
    cell := Cell(3, 4);
    newCell := direction.move(cell);
    verifyEq(newCell, Cell(4,6));
  }

  Void testTwoDirectionsWithSameDeltasAreEqual() 
  {
    direction := Direction(1,2);
    other := Direction(1,2);
    verifyEq(direction, other);
  }

  Void testTwoDirectionsWithDifferentDeltasAreNotEqual() 
  {
    direction := Direction(1,2);
    other := Direction(3,4);
    verifyNotEq(direction, other);
  }
}
