package dojo;

import static org.junit.Assert.*;

import org.junit.Ignore;
import org.junit.Test;

public class WorldTest {
		
	@Test
	public void shouldCreateWorldWithSize() throws Exception {
		new World(new Size(10));
	}
	
	@Test @Ignore("need to have equals on state")
	public void stateOfTheNewWorldShouldBeFlat() throws Exception {
		World world = new World(new Size(1));
		State expected = new State(new Pile(new Block(new Label(1))));
		assertEquals(expected, world.reportState());
	}
}
