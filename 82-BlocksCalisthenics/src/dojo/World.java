package dojo;

public class World {

	public World(Size worldSize) {
	}

	public State reportState() {
		return new State(new Pile(new Block(new Label(1))));
	}
}
