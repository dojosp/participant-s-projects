import static org.junit.Assert.assertEquals;

import org.junit.Ignore;
import org.junit.Test;



public class BowlingTest {
	
	@Test
	public void totalShouldBe0IfAllRoundsBe0() {
		int[] rounds = {0,0,
						0,0,
						0,0,
						0,0,
						0,0,
						0,0,
						0,0,
						0,0,
						0,0,
						0,0};
		Bowling bowling = new Bowling(rounds);
		assertEquals(0, bowling.getScore());
	}
	
	@Test
	public void totalShouldBe1IfFirstRoundIs1() {
		int[] rounds = {1,0,
				0,0,
				0,0,
				0,0,
				0,0,
				0,0,
				0,0,
				0,0,
				0,0,
				0,0};
		Bowling bowling = new Bowling(rounds);
		assertEquals(1, bowling.getScore());
	}

	@Test
	public void totalShouldSumUpAllPins() {
		int[] rounds = {1,0,
				0,0,
				0,0,
				0,0,
				0,0,
				0,0,
				0,0,
				0,0,
				0,2,
				0,0};
		Bowling bowling = new Bowling(rounds);
		assertEquals(3, bowling.getScore());
	}

	@Test
	public void totalShouldNotDetectFalseStrikes() {
		int[] rounds = {1,0,
				0,4,
				6,1,
				0,0,
				0,0,
				0,0,
				0,0,
				0,0,
				0,0,
				0,0};
		Bowling bowling = new Bowling(rounds);
		assertEquals(12, bowling.getScore());
	}
	@Test
	public void totalShouldBe1IfSecondRoundIs1() {
		int[] rounds = {0,0,
				1,0,
				0,0,
				0,0,
				0,0,
				0,0,
				0,0,
				0,0,
				0,0,
				0,0};
		Bowling bowling = new Bowling(rounds);
		assertEquals(1, bowling.getScore());
	}

	@Test
	public void totalShouldBe12IfSecondRoundIsSpareAndNextRollScores1() {
		int[] rounds = {0,0,
				5,5,
				1,0,
				0,0,
				0,0,
				0,0,
				0,0,
				0,0,
				0,0,
				0,0};
		Bowling bowling = new Bowling(rounds);
		assertEquals(12, bowling.getScore());
	}

	@Test
	public void totalShouldBe11IfSecondRoundIsSpareFollowedByNothingAnd1() {
		int[] rounds = {0,0,
				5,5,
				0,1,
				0,0,
				0,0,
				0,0,
				0,0,
				0,0,
				0,0,
				0,0};
		Bowling bowling = new Bowling(rounds);
		assertEquals(11, bowling.getScore());
	}

	
	@Test
	public void shouldAddStrikeBonus() {
		
	}
}
