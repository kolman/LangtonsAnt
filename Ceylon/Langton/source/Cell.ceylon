class Cell(Integer x, Integer y) satisfies Equality {
	shared Integer x = x;
	shared Integer y = y;
	
	shared actual Boolean equals(Equality that){
		if(is Cell that) {
			return that.x==x && that.y==y;
		}
		return false;
	}
	
	shared actual Integer hash {
		return x+y;
	}
	
	shared String toString() {
		return "[" + x.string + ", " + y.string + "]";
	} 
}