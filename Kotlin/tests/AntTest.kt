class AntTest() {

    val position = Position(0,0)

    fun run() {
        canTurn()
        canMoveForward()
    }

    fun canTurn(){
        val ant = Ant(position, Direction(0,1));
        ant.turn(Turn.Left);
        assert(ant.direction==Direction(-1,0), "ant should turn left")
    }

    fun canMoveForward(){
        val ant = Ant(Position(1,2), Direction(3,4));
        ant.move();
        assert(ant.position==Position(4, 6), "ant should move to another position");
    }

}
