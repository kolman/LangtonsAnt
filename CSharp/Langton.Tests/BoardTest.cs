using FluentAssertions;
using NUnit.Framework;

namespace Langton.Tests
{
	public class BoardTest
	{
		Board _board;
		Position _blackCell;
		Position _whiteCell;

		[SetUp]
		public void SetUp()
		{
			_blackCell = new Position(0, 0);
			_whiteCell = new Position(0, 1);
			_board = new Board(new[] {new Position(0, 0),});
		}

		[Test]
		public void CanTestBlackCellColor()
		{
			var isBlack = _board.IsBlack(_blackCell);
			isBlack.Should().BeTrue();
		}

		[Test]
		public void CanTestWhiteCellColor()
		{
			var isBlack = _board.IsBlack(_whiteCell);
			isBlack.Should().BeFalse();
		}

		[Test]
		public void CanFlipBlackCellToWhite()
		{
			_board.FlipColor(_blackCell);
			_board.IsBlack(_blackCell).Should().BeFalse();
		}

		[Test]
		public void CanFlipWhiteCellToBlack()
		{
			_board.FlipColor(_whiteCell);
			_board.IsBlack(_whiteCell).Should().BeTrue();
		}
	}
}