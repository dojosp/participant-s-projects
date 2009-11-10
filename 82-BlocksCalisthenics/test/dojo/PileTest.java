package dojo;

import static org.junit.Assert.*;

import org.junit.Test;

public class PileTest {

	@Test
	public void pileShouldBeBuiltWithBlocks() throws Exception {
		new Pile(new Block(new Label(0)));
	}
}
