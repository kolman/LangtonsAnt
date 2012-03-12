class Game
{
  private Ant _ant;
  private Board _board;

  new make(Ant ant, Board board) 
  {
    _ant = ant;
    _board = board;
  }
  
  Void tick() 
  {
    if(_board.isBlack(_ant.position)) {
      _ant.turnLeft();
    } else {
      _ant.turnRight();
    }
    _board.flip(_ant.position);
    _ant.move();
  } 
}
