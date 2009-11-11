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
	
	@Test
	public void emptyStateShouldNotEqualNotEmptyState() throws Exception {
		State emptyState = new State();
		State state = new State(new Pile());
		assertFalse(emptyState.equals(state));
	}
	
	@Test
	public void stateWithOneBlock0ShouldNotEqualStateWithOneBlock1() throws Exception {
		State stateWithOneBlock0 = new State(new Pile(new Block(new Label(0))));
		State stateWithOneBlock1 = new State(new Pile(new Block(new Label(1))));
		assertFalse(stateWithOneBlock0.equals(stateWithOneBlock1));
	}
}
