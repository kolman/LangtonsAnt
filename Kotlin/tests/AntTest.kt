class AntTest() {

    val position = Position(0,0)

    fun run() {
        canTurn(Turn.Left, Orientation.N, Orientation.W)
        canTurn(Turn.Left, Orientation.W, Orientation.S)
        canTurn(Turn.Left, Orientation.S, Orientation.E)
        canTurn(Turn.Left, Orientation.E, Orientation.N)
        canTurn(Turn.Right, Orientation.N, Orientation.E)
        canTurn(Turn.Right, Orientation.E, Orientation.S)
        canTurn(Turn.Right, Orientation.S, Orientation.W)
        canTurn(Turn.Right, Orientation.W, Orientation.N)

        canMoveForward(Orientation.N, Position(0,1))
        canMoveForward(Orientation.E, Position(1,0))
        canMoveForward(Orientation.S, Position(0,-1))
        canMoveForward(Orientation.W, Position(-1,0))
    }

    fun canTurn(turn : Int, initialOrientation : Int, expectedOrientation : Int){
        var ant = Ant(position, initialOrientation)
        ant.turn(turn)
        assert(ant.orientation==expectedOrientation, "Cannot turn ${turn} from ${initialOrientation}. Expected ${expectedOrientation} but was ${ant.orientation}")
    }

    fun canMoveForward(orientation : Int, expectedPosition: Position){
        var ant = Ant(position, orientation)
        ant.moveForward();
        assert(ant.position==expectedPosition, "Cannot move to ${orientation}. Expected ${expectedPosition.x},${expectedPosition.y} but was ${ant.position.x},${ant.position.y}")
    }

}
