package minesweeper;

import static org.junit.Assert.*;

import org.junit.Test;

public class MinesweeperTest {

	@Test
	public void createA1x1Field() throws Exception {
		MinesweeperField field = new MinesweeperField(1, 1);
		
		assertArrayEquals("No mines in fresh field", new String[] {"0"}, field.getResult());	
	}
	@Test
	public void createARealField() throws Exception {
		MinesweeperField field = new MinesweeperField(3,3);
		field.mine(0,0).mine(2,0);
		
		assertArrayEquals("Bad result", 
				new String[] { "*10", "220", "*10" },
				field.getResult());
		
		
	}
	
	@Test
	public void createARealField2() throws Exception {
		MinesweeperField field = new MinesweeperField(3,3);
		field.mine(0,0).mine(1,0);
		
		assertArrayEquals("Bad result", 
				new String[] { "*20", "*20", "110"},
				field.getResult());
		
		
	}
	
}
