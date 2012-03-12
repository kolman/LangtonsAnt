namespace Langton
{
	public class Position
	{
		readonly int _x;
		public int X
		{
			get { return _x; }
		}

		readonly int _y;
		public int Y
		{
			get { return _y; }
		}

		public Position(int x, int y)
		{
			_x = x;
			_y = y;
		}

		public override bool Equals(object obj)
		{
			var other = obj as Position;
			if (other != null)
				return X == other.X && Y == other.Y;
			return false;
		}

		public override int GetHashCode()
		{
			return _x + _y;
		}

		public override string ToString()
		{
			return string.Format("[{0:00}, {1:00}]", X, Y);
		}
	}
}
