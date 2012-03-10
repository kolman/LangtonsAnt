class Board {
  
  Set<Cell> _blackCells;
  Iterable<Cell> get blackCells() => _blackCells;
  
  Board(Iterable<Cell> initialBlackCells) {
    _blackCells = new Set.from(initialBlackCells);
  }
  
  bool isBlack(Cell cell) => _blackCells.contains(cell);
  
  void flipColor(Cell cell) {
    if(_blackCells.contains(cell))
      _blackCells.remove(cell);
    else
      _blackCells.add(cell);
  }
}
