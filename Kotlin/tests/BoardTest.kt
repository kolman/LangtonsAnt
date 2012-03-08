class BoardTest() {
    fun run() {
        canCheckForBlackCell()
        canCheckForWhiteCell()
        canFlipBlackCell()
        canFlipWhiteCell()
    }

    fun canCheckForBlackCell(){
        var board = Board(array(Position(1,1)).toSet())
        assert(board.isBlack(Position(1,1)))
    }

    fun canCheckForWhiteCell(){
        var board = Board(array(Position(1,1)).toSet())
        assert(!board.isBlack(Position(2,2)))
    }

    fun canFlipBlackCell() {
        var board = Board(array(Position(1,1)).toSet())
        board.flip(Position(1,1))
        assert(!board.isBlack(Position(1,1)))
    }

    fun canFlipWhiteCell() {
        var board = Board(array(Position(2,2)).toSet())
        board.flip(Position(1,1))
        assert(board.isBlack(Position(1,1)))
    }
}
