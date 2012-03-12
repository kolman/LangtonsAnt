class BoardTest() {
	
	Cell blackCell = Cell(0,0);
	Cell whiteCell = Cell(1,0);
	variable Board board := Board({});
	
	shared void run() {
		blackCellIsBlack();
		whiteCellIsNotBlack();
		canFlipBlackCellToWhite();
		canFlipWhiteCellToBlack();
	}
	
	void setup() {
		board := Board({blackCell});
	}
	
	void blackCellIsBlack() {
		setup();		
		assert(board.isBlack(blackCell), "black cell should be black");
	}

	void whiteCellIsNotBlack() {
		setup();			
		assert(!board.isBlack(whiteCell), "white cell should not be black");
	}
	
	void canFlipBlackCellToWhite() {
		setup();
		board.flip(blackCell);
		assert(!board.isBlack(blackCell), "should flip cell to white");
	}

	void canFlipWhiteCellToBlack() {
		setup();
		board.flip(whiteCell);
		assert(board.isBlack(whiteCell), "should flip cell to black");
	}
}