class Direction {
  final int dx;
  final int dy;
  Direction(this.dx, this.dy);
  
  Direction rotate(int rotation) {
    switch(rotation) {
      case Rotation.LEFT: 
        return new Direction(-dy, dx);
      case Rotation.RIGHT: 
        return new Direction(dy, -dx);
      default:
        throw 'Error';
    }
  }
  
  Cell moveFrom(Cell fromCell) {
    return new Cell(fromCell.x + dx, fromCell.y + dy);
  }
  
  bool operator == (Direction other) => other!=null && other.dx==dx && other.dy==dy;
  
  int hashCode() => dx + dy;
  
  factory Direction.north() {
    return new Direction(0, 1);
  }
  
  factory Direction.east() {
    return new Direction(1, 0);
  }
  
  factory Direction.south() {
    return new Direction(0, -1);
  }
  
  factory Direction.west() {
    return new Direction(-1, 0);
  }
}

class Rotation {
  static final int LEFT = 0;
  static final int RIGHT = 1;
}
