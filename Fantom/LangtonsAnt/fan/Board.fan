class Board 
{
  private Cell[] _blackCells := [,];
  Cell[] blackCells() { return _blackCells; }
  
  new make(Cell[] initialBlacks) 
  {
    _blackCells = initialBlacks.dup();
  }

  Bool isBlack(Cell cell) 
  {
    return _blackCells.contains(cell);
  }

  Void flip(Cell cell) 
  {
    if(isBlack(cell))
      _blackCells.remove(cell);
    else
      _blackCells.add(cell);
  }
}