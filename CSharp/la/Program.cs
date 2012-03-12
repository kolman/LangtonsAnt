using System;
using Langton;

namespace la
{
	class Program
	{
		static void Main(string[] args)
		{
			var ticks = args.Length == 0
							? 1000
							: int.Parse(args[0]);
			var board = new Board(new Position[0]);
			var ant = new Ant(Direction.North, new Position(0, 0));
			var game = new Game(board, ant);

			while (ticks > 0)
			{
				game.Tick();
				ticks--;
			}

			var blackCells = string.Join(", ", board.BlackCells);
			Console.WriteLine(blackCells);

			Console.ReadLine();
		}
	}
}
