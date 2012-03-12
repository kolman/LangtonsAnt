
class BoardTest : Test
{
  const Cell blackCell := Cell(0,0);
  const Cell whiteCell := Cell(1,0);
  
  Void testBlackCellIsBlack() 
  {
    board := Board([blackCell]);  
    verify(board.isBlack(blackCell), "black cell should be black");
  }

  Void testWhiteCellIsNotBlack() 
  {
    board := Board([blackCell]);   
    verify(!board.isBlack(whiteCell), "white cell should not be black");
  }

  Void testCanFlipBlackCellToWhite() 
  {
    board := Board([blackCell]);  
    board.flip(blackCell);
    verify(!board.isBlack(blackCell), "should flip cell to white");
  }

  Void testCanFlipWhiteCellToBlack() 
  {
    board := Board([blackCell]);  
    board.flip(whiteCell);
    verify(board.isBlack(whiteCell), "should flip cell to black");
  }
}
