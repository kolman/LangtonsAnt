class CellTest() {
	shared void run() {
		twoCellsWithSameCoordinatesAreEqual();
		twoCellsWithDifferentCoordinatesAreNotEqual();
	}
	
	void twoCellsWithSameCoordinatesAreEqual() {
		value cell = Cell(1,2);
		value other = Cell(1,2);
		assert(cell==other, "two cells with same coordinates should be equal");
	}
	
	void twoCellsWithDifferentCoordinatesAreNotEqual() {
		value cell = Cell(1,2);
		value other = Cell(3,4);
		assert(cell!=other, "two cells with different coordinates should not be equal");
	}
}