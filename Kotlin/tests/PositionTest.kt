import java.util.HashSet

class PositionTest() {
    fun run() {
        twoPositionsWithSameCoorsEquals()
        canBeFoundInSet()
    }

    fun twoPositionsWithSameCoorsEquals(){
        var p1 = Position(1, 2)
        var p2 = Position(1, 2)
        assert(p1==p2)
    }

    fun canBeFoundInSet(){
        var set = HashSet<Position>()
        set.add(Position(1, 2))
        assert(set.contains(Position(1, 2)))
    }
}