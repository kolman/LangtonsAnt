class GameTest() {

    fun run() {
        followsRuleForBlackCell()
        followsRuleForWhiteCell()
    }

    fun followsRuleForBlackCell() {
        var board = Board(array(Position(0,0)).toSet())
        var ant = Ant(Position(0,0), Direction.North)
        var game = Game(board, ant)

        game.tick()

        assert(ant.direction==Direction.West, "ant has wrong orientation")
        assert(ant.position==Position(-1, 0), "ant has wrong position")
        assert(!board.isBlack(Position(0,0)), "color of the cell should be flipped")
    }

    fun followsRuleForWhiteCell() {
        var board = Board(array(Position(0,0)).toSet())
        var ant = Ant(Position(1,1), Direction.North)
        var game = Game(board, ant)

        game.tick()

        assert(ant.direction==Direction.East, "ant has wrong orientation")
        assert(ant.position==Position(2,1), "ant has wrong position")
        assert(board.isBlack(Position(1,1)), "color of the cell should be flipped")
    }
}
