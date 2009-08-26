import static org.junit.Assert.assertEquals;

import org.junit.Test;



public class BowlingTest {
	
	@Test
	public void totalShouldBe0IfAllRoundsBe0() {
		int[] rounds = {0,0,0,0,0,0,0,0,0,0};
		Bowling bowling = new Bowling(rounds);
		assertEquals(0, bowling.getScore());
	}
	
	@Test
	public void totalShouldBe1IfFirstRoundIs1() {
		int[] rounds = {1,0,0,0,0,0,0,0,0,0};
		Bowling bowling = new Bowling(rounds);
		assertEquals(1, bowling.getScore());
	}

	@Test
	public void totalShouldBe1IfSecondRoundIs1() {
		int[] rounds = {0,1,0,0,0,0,0,0,0,0};
		Bowling bowling = new Bowling(rounds);
		assertEquals(1, bowling.getScore());
	}

}
