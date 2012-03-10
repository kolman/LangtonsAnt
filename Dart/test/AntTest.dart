class AntTest {
  run() {
    group('Ant.turn', () {
      
      var blackCell = new Cell(0, 0);
      var whiteCell = new Cell(1, 0);
      var board = new Board([blackCell]);
      
      test('can turn left', () {
        _canTurn(Direction.LEFT, Orientation.N, Orientation.W);
        _canTurn(Direction.LEFT, Orientation.W, Orientation.S);
        _canTurn(Direction.LEFT, Orientation.S, Orientation.E);
        _canTurn(Direction.LEFT, Orientation.E, Orientation.N);
      });
      
      test('can turn right', () {
        _canTurn(Direction.RIGHT, Orientation.N, Orientation.E);
        _canTurn(Direction.RIGHT, Orientation.E, Orientation.S);
        _canTurn(Direction.RIGHT, Orientation.S, Orientation.W);
        _canTurn(Direction.RIGHT, Orientation.W, Orientation.N);
      });
    });
    
    group('Ant.move', () {
      test('can move forward', () {
        _canMove(Orientation.N, new Cell(0,0), new Cell(0,1));
        _canMove(Orientation.E, new Cell(0,0), new Cell(1,0));
        _canMove(Orientation.S, new Cell(0,0), new Cell(0,-1));
        _canMove(Orientation.W, new Cell(0,0), new Cell(-1,0));
      });
    });
  }
  
  _canTurn(int direction, int from, int to) {
    var ant = new Ant(from, new Cell(0,0));
    ant.turn(direction);
    Expect.equals(to, ant.orientation);
  }
  
  _canMove(int orientation, Cell from, Cell to) {
    var ant = new Ant(orientation, from);
    ant.move();
    Expect.equals(to, ant.position);
  }
}
