import java.util.Collection
import java.util.Set
import java.util.HashSet

class Game(val board: Board, val ant: Ant){
    fun tick() {
        if (board.isBlack(ant.position))
            ant.turn(Turn.Left)
        else
            ant.turn(Turn.Right)
        board.flip(ant.position)
        ant.move()
    }
}

