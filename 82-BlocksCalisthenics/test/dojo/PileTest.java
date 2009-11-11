package dojo;

import static org.junit.Assert.*;

import org.junit.Test;

public class PileTest {

	@Test
	public void pileShouldBeBuiltWithBlocks() throws Exception {
		new Pile(new Block(new Label(0)));
	}

	@Test
	public void emptyPileShouldEqualEmptyPile() throws Exception {
		Pile pile = new Pile();
		Pile otherPile = new Pile();
		assertEquals(pile, otherPile);
	}
	
	@Test
	public void pileWithBlock0ShouldNotEqualEmptyPile() throws Exception {
		Pile emptyPile = new Pile();
		Pile pileWithBlock0 = new Pile(new Block(new Label(0)));
		assertFalse(emptyPile.equals(pileWithBlock0));
	}
}
