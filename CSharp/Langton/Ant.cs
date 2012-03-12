namespace Langton
{
	public class Ant : IAnt
	{
		public Position Position { get; private set; }

		public Direction Direction { get; private set; }

		public Ant(Direction direction, Position position)
		{
			Direction = direction;
			Position = position;
		}

		public void MoveForward()
		{
			Position = Direction.MoveFrom(Position);
		}

		public void Turn(Rotation rotation)
		{
			Direction = Direction.Rotate(rotation);
		}
	}
}