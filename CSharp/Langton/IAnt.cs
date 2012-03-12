namespace Langton
{
	public interface IAnt
	{
		Position Position { get; }
		void MoveForward();
		void Turn(Rotation direction);
	}
}