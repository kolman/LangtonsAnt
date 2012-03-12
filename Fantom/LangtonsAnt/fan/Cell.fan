const class Cell 
{
  const Int x;
  const Int y;
  
  new make(Int x, Int y) 
  {
    this.x = x;
    this.y = y;
  }
  
  override Bool equals(Obj? other) 
  {
    otherCell := other as Cell;
    if(otherCell==null)
      return false;
    return x==otherCell.x && y==otherCell.y;
  }
  
  override Int hash() 
  {
    return x+y;
  }
  
  override Str toStr() 
  {
    return "[$x, $y]";
  }
}
