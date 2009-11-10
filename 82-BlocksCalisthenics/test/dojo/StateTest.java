package dojo;

import static org.junit.Assert.*;

import org.junit.Test;

public class StateTest {

	@Test
	public void stateShouldBeBuiltWithPiles() {
		new State(new Pile());
	}

	@Test
	public void stateShouldEqualItself() throws Exception {
		State state = new State();
		assertEquals(state, state);
	}
	
	@Test
	public void emptyStateShouldEqualCopyOfItself() throws Exception {
		State state = new State();
		State equalState = new State();
		assertEquals(state, equalState);
	}
}
