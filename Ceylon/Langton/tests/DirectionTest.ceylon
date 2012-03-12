class DirectionTest() {
	
	shared void run() {
		canTurnLeft();
		canTurnRight();
		computesNewPosition();
		twoDirectionsWithSameDeltasAreEqual();
		twoDirectionsWithDifferentDeltasAreNotEqual();
	}
	
	void canTurnLeft() {
		assertCanTurnLeft(0,1,-1,0);
		assertCanTurnLeft(-1,0,0,-1);
		assertCanTurnLeft(0,-1,1,0);
		assertCanTurnLeft(1,0,0,1);
	}
	
	void assertCanTurnLeft(Integer fx, Integer fy, Integer tx, Integer ty) {
		value direction = Direction(fx, fy);
		value turned = direction.turnLeft();
		assert(turned.dx==tx && turned.dy==ty, "Direction should turn left");
	} 
	
	void canTurnRight() {
		assertCanTurnRight(0,1,1,0);
		assertCanTurnRight(1,0,0,-1);
		assertCanTurnRight(0,-1,-1,0);
		assertCanTurnRight(-1,0,0,1);
	}
	
	void assertCanTurnRight(Integer fx, Integer fy, Integer tx, Integer ty) {
		value direction = Direction(fx, fy);
		value turned = direction.turnRight();
		assert(turned.dx==tx && turned.dy==ty, "Direction should turn right");
	}
	
	void computesNewPosition() {
		value direction = Direction(1, 2);
		value cell = Cell(3, 4);
		value newCell = direction.move(cell);
		assert(newCell.x==4 && newCell.y==6, "direction should compute new position");
	}
	
	void twoDirectionsWithSameDeltasAreEqual() {
		value direction = Direction(1,2);
		value other = Direction(1,2);
		assert(direction==other, "two directions with same deltas should be equal");
	}
	
	void twoDirectionsWithDifferentDeltasAreNotEqual() {
		value direction = Direction(1,2);
		value other = Direction(3,4);
		assert(direction!=other, "two directions with different deltas should not be equal");
	}
}