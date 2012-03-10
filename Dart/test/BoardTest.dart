class BoardTest {
  run() {
    group('Board.isBlack', () {
      
      var blackCell = new Cell(0, 0);
      var whiteCell = new Cell(1, 0);
      var board = new Board([blackCell]);
      
      test('return false for white cell', () {
        Expect.isFalse(board.isBlack(whiteCell));
      });
      
      test('returns true for black cell', () {
        Expect.isTrue(board.isBlack(blackCell));
      });
    });
    
    group('Board.flipColor', () {
      
      var blackCell = new Cell(0, 0);
      var whiteCell = new Cell(1, 0);
      
      test('can flip white cell to black', () {
        Board board = new Board([]);
        board.flipColor(whiteCell);
        Expect.isTrue(board.isBlack(whiteCell));
      });
      
      test('can flip black cell to white', () {
        Board board = new Board([blackCell]);
        board.flipColor(blackCell);
        Expect.isFalse(board.isBlack(blackCell));
      });
    });
  }
}
