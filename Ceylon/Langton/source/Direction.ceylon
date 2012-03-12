class Direction(Integer dx, Integer dy) satisfies Equality {
	shared Integer dx = dx;
	shared Integer dy = dy;
	
	shared Direction turnLeft(){
		return Direction(-dy,dx);
	}
	
	shared Direction turnRight(){
		return Direction(dy,-dx);
	}
	
	shared Cell move(Cell from) {
		return Cell(from.x + dx, from.y + dy);
	}
	
	shared actual Boolean equals(Equality that){
		if(is Direction that) {
			return that.dx==dx && that.dy==dy;
		}
		return false;
	}
	
	shared actual Integer hash {
		return dx+dy;
	}
}

Direction direction_north = Direction(0,1);
Direction direction_east = Direction(1,0);
Direction direction_south = Direction(0,-1);
Direction direction_west = Direction(-1,0);
