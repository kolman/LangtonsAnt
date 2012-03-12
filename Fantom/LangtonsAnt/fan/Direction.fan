
const class Direction
{
  const Int dx;
  const Int dy;
  
  static const Direction NORTH := Direction(0, 1); 
  static const Direction EAST := Direction(1, 0); 
  static const Direction SOUTH := Direction(0, -1); 
  static const Direction WEST := Direction(-1, 0); 
  
  new make(Int dx, Int dy) 
  {
    this.dx = dx;
    this.dy = dy;
  }
  
  Direction turnLeft() 
  {
    return Direction(-dy, dx);
  }
  
  Direction turnRight() 
  {
    return Direction(dy, -dx);
  }
  
  Cell move(Cell from) 
  {
    return Cell(from.x + dx, from.y + dy);
  }
  
  override Bool equals(Obj? other) 
  {
    otherDirection := other as Direction;
    if(otherDirection==null)
      return false;
    return dx==otherDirection.dx && dy==otherDirection.dy;
  }
  
  override Int hash() 
  {
    return dx+dy;
  }
}
