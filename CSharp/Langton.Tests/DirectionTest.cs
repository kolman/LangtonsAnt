using FluentAssertions;
using NUnit.Framework;

namespace Langton.Tests
{
	public class DirectionTest
	{
		[TestCase(0, 1, Rotation.Left, -1, 0)]
		[TestCase(-1, 0, Rotation.Left, 0, -1)]
		[TestCase(0, -1, Rotation.Left, 1, 0)]
		[TestCase(1, 0, Rotation.Left, 0, 1)]
		[TestCase(0, 1, Rotation.Right, 1, 0)]
		[TestCase(1, 0, Rotation.Right, 0, -1)]
		[TestCase(0, -1, Rotation.Right, -1, 0)]
		[TestCase(-1, 0, Rotation.Right, 0, 1)]
		public void CanTurn(int fromDx, int fromDy, Rotation rotation, int toDx, int toDy)
		{
			var direction = new Direction(fromDx, fromDy);
			var rotated = direction.Rotate(rotation);
			rotated.Should().Be(new Direction(toDx, toDy));
		}

		[Test]
		public void CanComputeNextPosition()
		{
			var fromPosition = new Position(1, 2);
			var direction = new Direction(11, 22);
			direction.MoveFrom(fromPosition)
				.Should().Be(new Position(12, 24));
		}

		[Test]
		public void TwoDifferentDirectionsWithSameDeltasAreEqual()
		{
			var d1 = new Direction(0, 0);
			d1.Should().Be(new Direction(0, 0));
		}

		[Test]
		public void TwoDifferentDirectionsWithDifferentDeltasAreNotEqual()
		{
			var d1 = new Direction(0, 0);
			d1.Should().NotBe(new Direction(1, 1));
		}
	}
}