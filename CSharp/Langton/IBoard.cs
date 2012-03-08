namespace Langton
{
	public interface IBoard
	{
		bool IsBlack(Position position);
		void FlipColor(Position position);
	}
}