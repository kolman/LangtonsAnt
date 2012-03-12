class Ant(
	Cell initialPosition, 
	Direction initialDirection) {
	
	variable Cell _position := initialPosition;
	shared Cell position { return _position; }
	
	variable Direction _direction := initialDirection;
	shared Direction direction { return _direction; }
	
	shared void move() {
		_position := _direction.move(_position); 
	}
	
	shared void turnLeft() {
		_direction := _direction.turnLeft();
	}
	
	shared void turnRight() {
		_direction := _direction.turnRight();
	}
}