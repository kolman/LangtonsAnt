class Cell implements Hashable {
  final int x;
  final int y;
  Cell(this.x, this.y);
  
  bool operator == (Cell other) => other!=null && other.x==x && other.y==y;
  
  int hashCode() => x + y;
  
  String toString() => '[$x,$y]';
}