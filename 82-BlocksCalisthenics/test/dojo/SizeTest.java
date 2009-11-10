package dojo;

import static org.junit.Assert.*;

import org.junit.Test;

public class SizeTest {

	@Test
	public void existsSize() {
		new Size(10);
	}

	@Test
	public void sizeShouldEqualItself() throws Exception {
		Size zero = new Size(0);
		assertEquals(zero, zero);
	}

	@Test
	public void size0ShouldEqualSize0() throws Exception {
		Size zero = new Size(0);
		Size otherZero = new Size(0);
		assertEquals(zero, otherZero);
	}

	@Test
	public void size0ShouldNotEqualSize1() throws Exception {
		Size zero = new Size(0);
		Size one = new Size(1);
		assertFalse(zero.equals(one));
	}
}
