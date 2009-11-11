package dojo;

import static org.junit.Assert.*;

import org.junit.Test;

public class BlockTest {
	@Test
	public void blockShouldBeCreated() throws Exception {
		new Block(new Label(0));
	}
	
	@Test
	public void block0ShouldEqualBlock0() throws Exception {
		Block block0 = new Block(new Label(0));
		Block otherBlock0 = new Block(new Label(0));
		
		assertEquals(block0, otherBlock0);
	}
	
	@Test
	public void block0ShouldNotEqualBlock1() throws Exception {
		Block block0 = new Block(new Label(0));
		Block block1 = new Block(new Label(1));
		
		assertFalse(block0.equals(block1));	
	}
}
