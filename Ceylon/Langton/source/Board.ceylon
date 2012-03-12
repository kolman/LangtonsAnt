class Board(Cell[] initialBlackCells) {
	
	variable Cell[] _blackCells := initialBlackCells;
	shared Cell[] blackCells { return _blackCells; }
	
	shared Boolean isBlack(Cell cell) {
		for(Cell i in _blackCells){
			if(i==cell) {
				return true;
			}
		}
		return false;
	}
	
	shared void flip(Cell cell) {
		value builder = SequenceBuilder<Cell>();
		if(isBlack(cell)) {
			for(i in _blackCells) {
				if(i!=cell) {
					builder.append(i);
				}
			}
		} else {
			for(i in _blackCells) {
				builder.append(i);
			}
			builder.append(cell);
		}
		_blackCells := builder.sequence;
	}
}