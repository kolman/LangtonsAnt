class Ant {
  int orientation;
  Cell position;
  
  Ant(int this.orientation, Cell this.position);
  
  void turn(int direction) {
    switch(direction) {
      case Direction.LEFT: 
        _turnLeft();
        break;
      case Direction.RIGHT: 
        _turnRight();
        break;
      default:
        throw 'Error';
    }
  }
  
  void _turnLeft() {
    orientation--;
    if(orientation<Orientation.N) orientation=Orientation.W;    
  }
  
  void _turnRight() {
    orientation++;
    if(orientation>Orientation.W) orientation=Orientation.N;    
  }
  
  void move() {
    int dx = 0;
    int dy = 0;
    switch(orientation) {
      case Orientation.N: 
        dy = 1;
        break;
      case Orientation.E: 
        dx = 1;
        break;
      case Orientation.S: 
        dy = -1;
        break;
      case Orientation.W: 
        dx = -1;
        break;
      default:
        throw 'Error';
    }
    position = new Cell(position.x + dx, position.y + dy);
  }
}

class Orientation {
  static final int N = 0;
  static final int E = 1;
  static final int S = 2;
  static final int W = 3;
}

class Direction {
  static final int LEFT = 0;
  static final int RIGHT = 1;
}
