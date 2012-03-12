void assert(Boolean condition, String message) {
	if(!condition) {
		print("FAILED: " + message);
		throw Exception(message, null);
	}
}

void hello() {
	CellTest().run();
    BoardTest().run();
    DirectionTest().run();
    AntTest().run();
    GameTest().run();
  	print("OK");
}



