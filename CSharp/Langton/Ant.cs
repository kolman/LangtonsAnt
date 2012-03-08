using System;

namespace Langton
{
	public class Ant : IAnt
	{
		public Ant(Orientation orientation, Position position)
		{
			Orientation = orientation;
			Position = position;
		}

		public Position Position { get; private set; }

		public Orientation Orientation { get; private set; }

		public void MoveForward()
		{
			switch (Orientation)
			{
				case Orientation.N:
					Position = new Position(Position.X, Position.Y + 1);
					break;
				case Orientation.E:
					Position = new Position(Position.X + 1, Position.Y);
					break;
				case Orientation.S:
					Position = new Position(Position.X, Position.Y - 1);
					break;
				case Orientation.W:
					Position = new Position(Position.X - 1, Position.Y);
					break;
				default:
					throw new ArgumentOutOfRangeException();
			}
		}

		public void Turn(Turn direction)
		{
			switch (direction)
			{
				case Langton.Turn.Left:
					TurnLeft();
					break;
				case Langton.Turn.Right:
					TurnRight();
					break;
				default:
					throw new ArgumentOutOfRangeException("direction");
			}
		}

		void TurnRight()
		{
			var newOrientation = Orientation + 1;
			if (newOrientation > Orientation.W)
				newOrientation = Orientation.N;
			Orientation = newOrientation;
		}

		void TurnLeft()
		{
			var newOrientation = Orientation - 1;
			if (newOrientation < Orientation.N)
				newOrientation = Orientation.W;
			Orientation = newOrientation;
		}
	}
}