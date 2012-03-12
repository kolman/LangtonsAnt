class GameTest {
  run() {
    
    group('Game.tick', () {
      
      test('follows rules on black cell', () {
        Cell cell = new Cell(0,0);
        Ant ant = new Ant(new Direction.north(), cell);
        Board board = new Board([cell]);
        Game game = new Game(ant, board);
        
        game.tick();
        
        Expect.equals(new Direction.west(), ant.direction);
        Expect.equals(new Cell(-1,0), ant.position);
        Expect.isFalse(board.isBlack(cell));
      });
      
      test('follows rules on white cell', () {
        Cell cell = new Cell(0,0);
        Ant ant = new Ant(new Direction.north(), cell);
        Board board = new Board([]);
        Game game = new Game(ant, board);
        
        game.tick();
        
        Expect.equals(new Direction.east(), ant.direction);
        Expect.equals(new Cell(1,0), ant.position);
        Expect.isTrue(board.isBlack(cell));
      });
    });
  }
}