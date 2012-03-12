using System;

namespace Langton
{
	public class Direction
	{
		public static readonly Direction North = new Direction(0, 1);
		public static readonly Direction East = new Direction(1, 0);
		public static readonly Direction South = new Direction(0, -1);
		public static readonly Direction West = new Direction(-1, 0);

		readonly int _dx;
		public int Dx
		{
			get { return _dx; }
		}

		readonly int _dy;
		public int Dy
		{
			get { return _dy; }
		}

		public Direction(int dx, int dy)
		{
			_dx = dx;
			_dy = dy;
		}

		public Direction Rotate(Rotation rotation)
		{
			switch (rotation)
			{
				case Rotation.Left:
					return new Direction(-_dy, _dx);
				case Rotation.Right:
					return new Direction(_dy, -_dx);
				default:
					throw new ArgumentOutOfRangeException("rotation");
			}
		}

		public override bool Equals(object obj)
		{
			var other = obj as Direction;
			if (other != null)
				return Dx == other.Dx && Dy == other.Dy;
			return false;
		}

		public override int GetHashCode()
		{
			return _dx + _dy;
		}

		public Position MoveFrom(Position fromPosition)
		{
			return new Position(fromPosition.X + Dx, fromPosition.Y + Dy);
		}
	}
}