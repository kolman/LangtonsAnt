class Ant
{
  private Cell _position;
  Cell position() { return _position; }

  private Direction _direction;
  Direction direction() { return _direction; }
  
  new make(Cell position, Direction direction) 
  {
    _position = position;
    _direction = direction;
  }

  Void move() {
    this._position = _direction.move(_position); 
  }

  Void turnLeft() {
    this._direction = _direction.turnLeft();
  }

  Void turnRight() {
    this._direction = _direction.turnRight();
  }
}
