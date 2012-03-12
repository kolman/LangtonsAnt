class AntTest() {
	
	shared void run() {
		canMoveForward();
		canTurnLeft();
		canTurnRight();
	}
	
	void canMoveForward() {
		value ant = Ant(Cell(1,2), Direction(3,4));
		ant.move();
		assert(ant.position==Cell(4,6), "ant should move to another position");
	}
	
	void canTurnLeft() {
		value ant = Ant(Cell(0,0), Direction(0,1));
		ant.turnLeft();
		assert(ant.direction==Direction(-1,0), "ant should turn left");
	}
	
	void canTurnRight() {
		value ant = Ant(Cell(0,0), Direction(0,1));
		ant.turnRight();
		assert(ant.direction==Direction(1,0), "ant should turn right");
	}
}