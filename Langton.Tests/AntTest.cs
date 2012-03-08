using FluentAssertions;
using NUnit.Framework;

namespace Langton.Tests
{
	public class AntTest
	{
		readonly Position _initialPosition = new Position(0, 0);

		[TestCase(Orientation.N, Orientation.W, Turn.Left)]
		[TestCase(Orientation.W, Orientation.S, Turn.Left)]
		[TestCase(Orientation.S, Orientation.E, Turn.Left)]
		[TestCase(Orientation.E, Orientation.N, Turn.Left)]
		[TestCase(Orientation.N, Orientation.E, Turn.Right)]
		[TestCase(Orientation.E, Orientation.S, Turn.Right)]
		[TestCase(Orientation.S, Orientation.W, Turn.Right)]
		[TestCase(Orientation.W, Orientation.N, Turn.Right)]
		public void CanTurn(Orientation current, Orientation expected, Turn direction)
		{
			var ant = new Ant(current, _initialPosition);
			ant.Turn(direction);
			ant.Orientation.Should().Be(expected);
		}

		[TestCase(Orientation.N, 0, 1)]
		[TestCase(Orientation.E, 1, 0)]
		[TestCase(Orientation.S, 0, -1)]
		[TestCase(Orientation.W, -1, 0)]
		public void CanMoveForward(Orientation orientation, int dx, int dy)
		{
			var ant = new Ant(orientation, _initialPosition);
			ant.MoveForward();
			ant.Position.X.Should().Be(_initialPosition.X + dx);
			ant.Position.Y.Should().Be(_initialPosition.Y + dy);
		}
	}
}