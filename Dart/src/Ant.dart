class Ant {
  Direction direction;
  Cell position;
  
  Ant(Direction this.direction, Cell this.position);
  
  void turn(int rotation) {
    direction = direction.rotate(rotation);
  }
    
  void move() {
    position = direction.moveFrom(position);
  }
}