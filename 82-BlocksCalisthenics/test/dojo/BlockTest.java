package dojo;

import static org.junit.Assert.*;

import org.junit.Test;

public class BlockTest {
	@Test
	public void blockShouldBeCreated() throws Exception {
		new Block(new Label(0));
	}
}
