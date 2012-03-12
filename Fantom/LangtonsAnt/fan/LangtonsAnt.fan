class LangtonsAnt
{
	static Void main(Str[] args)
	{
	  board := Board([,]);
	  ant := Ant(Cell(0,0), Direction.NORTH);
	  game := Game(ant, board);
    steps := 1000;

    while (steps-->0) 
    {
      game.tick();
    }
    
    board.blackCells.each |cell| { echo(cell); };
	}
}
