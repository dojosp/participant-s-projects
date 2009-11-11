package dojo;

import static org.junit.Assert.*;

import org.junit.Test;

public class LabelTest {

	@Test
	public void labelShouldBeCreated() throws Exception {
		new Label(0);
	}

	@Test
	public void label0ShouldNotEqualLabel1() throws Exception {
		Label label0 = new Label(0);
		Label label1 = new Label(1);
		assertFalse(label1.equals(label0));
	}
	
	@Test
	public void label0ShouldEqualLabel0() throws Exception {
		Label label0 = new Label(0);
		Label otherLabel0 = new Label(0);
		assertEquals(otherLabel0, label0);
	}
}
