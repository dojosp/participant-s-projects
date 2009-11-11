package dojo;

import java.util.Arrays;
import java.util.List;

public class State {
	private List<Pile> piles;

	public State(Pile... arrayOfPiles) {
		piles = Arrays.asList(arrayOfPiles);
	}

	@Override
	public boolean equals(Object object) {
		State otherState = (State) object;
		List<Pile> otherPiles = otherState.piles;

		return otherPiles.equals(piles);
	}
}
