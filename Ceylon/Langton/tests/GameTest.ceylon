class GameTest() {
	
	Cell blackCell = Cell(0,0);
	Cell whiteCell = Cell(1,1);
	variable Board board := Board({});
	variable Ant ant := Ant(blackCell, direction_north);
	variable Game game := Game(ant, board); 
	
	shared void run() {
		turnsAntLeftOnBlackCell();
		turnsAntRightOnWhiteCell();
		flipsCurrentCell();
		movesAntForward();
	}
	
	void setup(Cell antPosition, Direction antDirection) {
		board := Board({blackCell});
		ant := Ant(antPosition, antDirection);
		game := Game(ant, board);
	}
	
	void turnsAntLeftOnBlackCell() {
		setup(blackCell, direction_north);
		game.tick();
		assert(ant.direction==direction_west, "ant should turn left on black cell");
	}
	
	void turnsAntRightOnWhiteCell() {
		setup(whiteCell, direction_north);
		game.tick();
		assert(ant.direction==direction_east, "ant should turn right on white cell");
	}
	
	void flipsCurrentCell() {
		setup(blackCell, direction_north);
		game.tick();
		assert(!board.isBlack(blackCell), "current cell should be flipped");
	}
	
	void movesAntForward() {
		setup(blackCell, direction_north);
		game.tick();
		assert(ant.position!=blackCell, "ant should move to another cell");
	}
}