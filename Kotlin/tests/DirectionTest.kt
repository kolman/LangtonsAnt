class DirectionTest() {
    fun run() {
        canTurnLeft();
        canTurnRight();
        computesNewPosition();
        twoDirectionsWithSameDeltasAreEqual();
        twoDirectionsWithDifferentDeltasAreNotEqual();
    }

    fun canTurnLeft() {
        assertCanRotate(0, 1, Turn.Left, -1, 0);
        assertCanRotate(-1, 0, Turn.Left, 0, -1);
        assertCanRotate(0, -1, Turn.Left, 1, 0);
        assertCanRotate(1, 0, Turn.Left, 0, 1);
    }

    fun canTurnRight() {
        assertCanRotate(0, 1, Turn.Right, 1, 0);
        assertCanRotate(1, 0, Turn.Right, 0, -1);
        assertCanRotate(0, -1, Turn.Right, -1, 0);
        assertCanRotate(-1, 0, Turn.Right, 0, 1);
    }

    fun assertCanRotate(fx: Int, fy: Int, rotation: Int, tx: Int, ty: Int) {
        val direction = Direction(fx, fy);
        val turned = direction.rotate(rotation);
        assert(turned==Direction(tx, ty), "Direction should turn left");
    }

    fun computesNewPosition() {
        val direction = Direction(1, 2);
        val position = Position(3, 4);
        val newPosition = direction.moveFrom(position);
        assert(newPosition== Position(4, 6), "direction should compute new position");
    }

    fun twoDirectionsWithSameDeltasAreEqual() {
        val direction = Direction(1,2);
        val other = Direction(1,2);
        assert(direction==other, "two directions with same deltas should be equal");
    }

    fun twoDirectionsWithDifferentDeltasAreNotEqual() {
        val direction = Direction(1,2);
        val other = Direction(3,4);
        assert(direction!=other, "two directions with different deltas should not be equal");
    }
}
