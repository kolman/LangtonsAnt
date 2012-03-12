
class AntTest : Test
{
  Void testCanMoveForward() 
  {
    ant := Ant(Cell(1,2), Direction(3,4));
    ant.move();
    verifyEq(ant.position, Cell(4,6), "ant should move to another position");
  }

  Void testCanTurnLeft() 
  {
    ant := Ant(Cell(0,0), Direction(0,1));
    ant.turnLeft();
    verifyEq(ant.direction, Direction(-1,0), "ant should turn left");
  }

  Void testCanTurnRight() 
  {
    ant := Ant(Cell(0,0), Direction(0,1));
    ant.turnRight();
    verifyEq(ant.direction, Direction(1,0), "ant should turn right");
  }
}