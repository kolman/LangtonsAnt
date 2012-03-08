import java.util.Set

class Board(val blackCells : Set<Position>) {

    fun isBlack(position : Position) : Boolean {
        return blackCells.contains(position);
    }

    fun flip(position: Position) {
        if(blackCells.contains(position))
            blackCells.remove(position)
        else
            blackCells.add(position)
    }

}
