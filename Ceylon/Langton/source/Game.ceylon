class Game(Ant ant, Board board) {
	Ant ant = ant;
	Board board = board;
	
	shared void tick() {
		if(board.isBlack(ant.position)) {
			ant.turnLeft();
		} else {
			ant.turnRight();
		}
		board.flip(ant.position);
		ant.move();
	} 
} 