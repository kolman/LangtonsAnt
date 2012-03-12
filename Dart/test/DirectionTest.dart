class DirectionTest {
  run() {
    
    group('Direction.rotate', () {
      test('can rotate left', () {
        _canRotate(0, 1, Rotation.LEFT, -1, 0);
        _canRotate(-1, 0, Rotation.LEFT, 0, -1);
        _canRotate(0, -1, Rotation.LEFT, 1, 0);
        _canRotate(1, 0, Rotation.LEFT, 0, 1);
      });
      
      test('can rotate right', () {
        _canRotate(0, 1, Rotation.RIGHT, 1, 0);
        _canRotate(1, 0, Rotation.RIGHT, 0, -1);
        _canRotate(0, -1, Rotation.RIGHT, -1, 0);
        _canRotate(-1, 0, Rotation.RIGHT, 0, 1);
      });
    });
    
    group('Direction.moveFrom', () {
      test('can compute new position', () {
        var direction = new Direction(1, 2);
        var fromCell = new Cell(3, 4);
        var toCell = direction.moveFrom(fromCell);
        Expect.equals(new Cell(4,6), toCell);
      });
    });
    
    group('Direction.equals', () {
      
      var direction = new Direction(0, 0);
      var sameDirection = new Direction(0, 0);
      var differentDirection = new Direction(1, 0);
      
      test('two directions with same deltas are equal', () {
        Expect.equals(direction, sameDirection);
      });
      
      test('two direction with different deltas are not equal', () {
        Expect.notEquals(direction, differentDirection);
      });
    });
  }
  
  _canRotate(int fromDx, int fromDy, int rotation, int toDx, int toDy) {
    var direction = new Direction(fromDx, fromDy);
    var rotated = direction.rotate(rotation);
    Expect.equals(new Direction(toDx, toDy), rotated);
  }
}
