namespace Langton
{
	public class Position
	{
		public int X { get; private set; }
		public int Y { get; private set; }

		public Position(int x, int y)
		{
			X = x;
			Y = y;
		}

		public override bool Equals(object obj)
		{
			var other = obj as Position;
			if (other != null)
				return X == other.X && Y == other.Y;
			return false;
		}
	}
}
