class Direction(val dx: Int, val dy: Int) {

    class object {
        val North = Direction(0, 1);
        val East = Direction(1, 0);
        val South = Direction(0, -1);
        val West = Direction(-1, 0);
    }

    fun rotate(rotation: Int) : Direction {
        when(rotation) {
            Turn.Left -> return Direction(-dy, dx)
            Turn.Right -> return Direction(dy, -dx)
            else -> throw Exception("Not implemented")
        }
    }

    fun moveFrom(from: Position) : Position {
        return Position(from.x + dx, from.y + dy);
    }

    fun equals(obj : Any?) : Boolean {
        if(obj is Direction) {
            return dx==obj.dx && dy==obj.dy
        } else {
            return false
        }
    }

    fun hashCode() : Int {
        return dx + dy
    }
}

class Turn() {
    class object {
        val Left = 0
        val Right = 1
    }
}