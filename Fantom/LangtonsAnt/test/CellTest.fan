class CellTest : Test
{
  Void testCellsWithSameCoordinatesAreEqual()
  {
    cell := Cell(1, 2);
    otherCell := Cell(1, 2);
    verifyEq(cell, otherCell);
  }
  
  Void testCellsWithDifferentCoordinatesAreNotEqual()
  {
    cell := Cell(1, 2);
    otherCell := Cell(3, 4);
    verifyNotEq(cell, otherCell);
  }
  
  Void testCellCouldBeFoundInArray() 
  {
    cell := Cell(1, 2);
    cells := [cell];
    verify(cells.contains(Cell(1, 2)), "Cell should be found using method contains");
  }
}
