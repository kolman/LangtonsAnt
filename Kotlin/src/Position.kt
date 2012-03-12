class Position(val x: Int, val y:Int) {
    fun equals(obj : Any?) : Boolean {
        if(obj is Position) {
            return x==obj.x && y==obj.y
        } else {
            return false
        }
    }

    fun hashCode() : Int {
        return x + y
    }
}
