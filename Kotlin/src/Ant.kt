class Ant(var position: Position, var orientation: Int) {

    fun turn(direction: Int) {
        when (direction){
            Turn.Left -> {
                if(--orientation<Orientation.N) orientation = Orientation.W
            }
            Turn.Right -> {
                if(++orientation>Orientation.W) orientation = Orientation.N
            }
            else -> throw Exception("Not implemented")
        }
    }

    fun moveForward() {
        var dx = 0
        var dy = 0
        when(orientation){
            Orientation.N -> dy = 1
            Orientation.E -> dx = 1
            Orientation.S -> dy = -1
            Orientation.W -> dx = -1
            else -> throw Exception("Not implemented")
        }
        position = Position(position.x + dx, position.y + dy)
    }
}

class Orientation() {
    class object {
        val N = 0
        val E = 1
        val S = 2
        val W = 3
    }
}

class Turn() {
    class object {
        val Left = 0
        val Right = 1
    }
}
