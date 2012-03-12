using FluentAssertions;
using NUnit.Framework;

namespace Langton.Tests
{
	public class PositionTest
	{
		[Test]
		public void TwoDifferentPositionWithSameCoordinatesAreEqual()
		{
			var p1 = new Position(0, 0);
			p1.Should().Be(new Position(0, 0));
		}

		[Test]
		public void TwoDifferentPositionWithDifferentCoordinatesAreNotEqual()
		{
			var p1 = new Position(0, 0);
			p1.Should().NotBe(new Position(1, 1));
		}
	}
}