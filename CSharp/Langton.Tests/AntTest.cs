using FluentAssertions;
using NUnit.Framework;

namespace Langton.Tests
{
	public class AntTest
	{
		readonly Position _initialPosition = new Position(0, 0);
		readonly Direction _initialDirection = Direction.North;

		[TestCase(Rotation.Left)]
		[TestCase(Rotation.Right)]
		public void CanTurn(Rotation rotation)
		{
			var ant = new Ant(_initialDirection, _initialPosition);
			var expectedDirection = _initialDirection.Rotate(rotation);
			ant.Turn(rotation);
			ant.Direction.Should().Be(expectedDirection);
		}

		[Test]
		public void CanMoveForward()
		{
			var ant = new Ant(_initialDirection, _initialPosition);
			ant.MoveForward();
			ant.Position.Should().Be(_initialDirection.MoveFrom(_initialPosition));
		}
	}
}