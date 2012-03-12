#import('LangtonsAntLibrary.dart');

void main() {
  Ant ant = new Ant(new Direction.north(), new Cell(0,0));
  Board board = new Board([]);
  Game game = new Game(ant, board);
  
  for(var i = 0; i<1000; i++) game.tick();
  
  for(var cell in board.blackCells)
    print(cell);
}
