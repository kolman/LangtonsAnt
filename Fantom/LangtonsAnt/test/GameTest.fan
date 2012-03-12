class GameTest : Test
{
  const Cell blackCell := Cell(0,0);
  const Cell whiteCell := Cell(1,1);
  Board board := Board([,]);
  Ant ant := Ant(Cell(0,0), Direction.NORTH);
  Game game := Game(ant, board); 

  Void setupGame(Cell antPosition, Direction antDirection := Direction.NORTH) {
    this.board = Board([blackCell]);
    this.ant = Ant(antPosition, antDirection);
    this.game = Game(ant, board);
  }

  Void testTurnsAntLeftOnBlackCell() {
    setupGame(blackCell, Direction.NORTH);
    game.tick();
    verifyEq(ant.direction, Direction.WEST, "ant should turn left on black cell");
  }

  Void testTurnsAntRightOnWhiteCell() {
    setupGame(whiteCell, Direction.NORTH);
    game.tick();
    verifyEq(ant.direction, Direction.EAST, "ant should turn right on white cell");
  }

  Void testFlipsCurrentCell() {
    setupGame(blackCell);
    game.tick();
    verify(!board.isBlack(blackCell), "current cell should be flipped");
  }

  Void testMovesAntForward() {
    setupGame(blackCell);
    game.tick();
    verifyNotEq(ant.position, blackCell, "ant should move to another cell");
  }
}
