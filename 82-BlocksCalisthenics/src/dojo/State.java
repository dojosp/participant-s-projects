package dojo;

public class State {

	private Size size;
	
	public State(Pile... piles) {
		size = new Size(piles.length);
	}

	@Override
	public boolean equals(Object object) {
		State otherState = (State)object;
		Size otherSize = otherState.size;
		
		return otherSize.equals(size);
	}
}
