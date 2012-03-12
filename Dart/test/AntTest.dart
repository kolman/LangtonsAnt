class AntTest {
  run() {
    
    group('Ant.turn', () {
      
      var initialDirection = new Direction.north();
      var initialCell = new Cell(0, 0);
      
      test('can turn', () {
        Ant ant = new Ant(initialDirection, initialCell);
        ant.turn(Rotation.LEFT);
        Expect.equals(new Direction.west(), ant.direction);
      });
    });
    
    group('Ant.move', () {
      test('can move forward', () {
        var ant = new Ant(new Direction(3,4), new Cell(1,2));
        ant.move();
        Expect.equals(new Cell(4, 6), ant.position);
      });
    });
  }
}
