class Ant(var position: Position, var direction: Direction) {

    fun turn(turn: Int) {
        direction = direction.rotate(turn) ;
    }

    fun move() {
        position = direction.moveFrom(position);
    }
}
