void ant() {
	value board = Board({});
	value ant = Ant(Cell(0,0), direction_north);
	value game = Game(ant, board);
	
	for(i in 1..1000) {
		game.tick();
	}	
	
	value builder = StringBuilder();
	for(Cell c in board.blackCells) {
		String s = c.toString();
		builder.append(s);
		builder.append(" ");
	}
	print(builder.string);
}