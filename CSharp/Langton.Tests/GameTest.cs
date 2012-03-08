using System.Collections.Generic;
using FluentAssertions;
using Moq;
using NUnit.Framework;

namespace Langton.Tests
{
	public class GameTest
	{
		Position _position;
		Mock<IAnt> _ant;
		Mock<IBoard> _board;
		Game _game;

		[SetUp]
		public void SetUp()
		{
			_position = new Position(0, 0);
			_ant = new Mock<IAnt>();
			_ant.SetupGet(a => a.Position).Returns(_position);
			_board = new Mock<IBoard>();
			_game = new Game(_board.Object, _ant.Object);
		}

		[Test]
		public void TurnsAntLeftOnBlackCell()
		{
			_board.Setup(b => b.IsBlack(_position)).Returns(true);

			_game.Tick();

			_ant.Verify(a => a.Turn(Turn.Left));
		}

		[Test]
		public void TurnsAntRightOnWhiteCell()
		{
			_board.Setup(b => b.IsBlack(_position)).Returns(false);

			_game.Tick();

			_ant.Verify(a => a.Turn(Turn.Right));
		}

		[Test]
		public void FlipsColorOfCell()
		{
			_game.Tick();

			_board.Verify(b => b.FlipColor(_position));
		}

		[Test]
		public void MovesAnt()
		{
			_game.Tick();
			_ant.Verify(a => a.MoveForward());
		}

		[Test]
		public void TurnsAntThenFlipsColorThenMovesAnt()
		{
			var events = new List<string>();
			_ant.Setup(a => a.Turn(It.IsAny<Turn>()))
				.Callback(() => events.Add("turn"));
			_board.Setup(b => b.FlipColor(_position))
				.Callback(() => events.Add("flip"));
			_ant.Setup(a => a.MoveForward())
				.Callback(() => events.Add("move"));

			_game.Tick();

			events.Should().Equal(new[] { "turn", "flip", "move" });
		}
	}
}