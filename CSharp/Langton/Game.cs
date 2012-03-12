namespace Langton
{
	public class Game
	{
		readonly IBoard _board;
		readonly IAnt _ant;

		public Game(IBoard board, IAnt ant)
		{
			_board = board;
			_ant = ant;
		}

		public void Tick()
		{
			var position = _ant.Position;
			var turn = _board.IsBlack(position)
			           	? Rotation.Left
			           	: Rotation.Right;
			_ant.Turn(turn);
			_board.FlipColor(position);
			_ant.MoveForward();
		}
	}
}