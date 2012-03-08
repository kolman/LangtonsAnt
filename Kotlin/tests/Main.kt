import java.util.HashSet

fun main(args : Array<String>) {
    GameTest().run()
    BoardTest().run()
    PositionTest().run()
    AntTest().run()

    var board = getBoardAfterNSteps(1000)
    printCells(board)
}

fun getBoardAfterNSteps(n : Int) : Board {
    var board = Board(HashSet<Position>())
    var ant = Ant(Position(0,0), Orientation.N)
    var game = Game(board, ant)

    for (i in 1..n) {
        game.tick()
    }

    return board
}

fun printCells(board : Board){
    for (cell in board.blackCells) {
        print("[${cell.x}, ${cell.y}]")
    }
}

fun assert(condition: Boolean, message: String = ""){
    if (!condition)                     {
        var msg = when (message.length){
            is 0 -> "Assertion failed"
            else -> message
        }
        throw Exception(msg)
    }
}
