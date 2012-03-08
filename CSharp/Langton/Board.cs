using System.Collections.Generic;

namespace Langton
{
	public class Board : IBoard
	{
		readonly List<Position> _blackCells;
		public IEnumerable<Position> BlackCells
		{
			get { return _blackCells; }
		}

		public Board(IEnumerable<Position> blackCells)
		{
			_blackCells = new List<Position>(blackCells);
		}

		public bool IsBlack(Position position)
		{
			return _blackCells.Contains(position);
		}

		public void FlipColor(Position position)
		{
			if (_blackCells.Contains(position))
				_blackCells.Remove(position);
			else
				_blackCells.Add(position);
		}
	}
}