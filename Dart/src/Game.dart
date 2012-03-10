class Game {
  final Board _board;
  final Ant _ant;
  
  Game(Ant this._ant, Board this._board);
  
  void tick() {
    if(_board.isBlack(_ant.position))
      _ant.turn(Direction.LEFT);
    else
      _ant.turn(Direction.RIGHT);
    _board.flipColor(_ant.position);
    _ant.move();
  }
}
