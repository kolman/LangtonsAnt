class CellTest {
  run() {
    
    var cell = new Cell(0, 0);
    
    group('Cell.equals', () {
      
      var sameCell = new Cell(0, 0);
      var differentCell = new Cell(1, 0);
      
      test('two cells with same coords are equal', () {
        Expect.equals(cell, sameCell);
      });
      
      test('two cells with different coords are not equal', () {
        Expect.notEquals(cell, differentCell);
      });
    });
    
    group('Cell.hashCode', () {
      test('can be added to set', () {
        var set = new Set<Cell>();
        set.add(cell);
      });
    });
    
    group('Cell.toString', () {
      test('has correct string format', () {
        var cell12 = new Cell(1,2);
        var text = '$cell12';
        Expect.equals('[1,2]', text);
      });
    });
  }
}
