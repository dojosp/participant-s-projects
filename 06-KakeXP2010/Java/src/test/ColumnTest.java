package test;
import static org.junit.Assert.assertEquals;

import org.junit.Test;

import src.Column;

public class ColumnTest 
{
	@Test
	public void emptyColumnShouldPrintEmptyState()
	{
		Column column = new Column(0);
		assertEquals("0: ", column.printState());
	}
	
	@Test
	public void columnWithBoxAShouldPrintStateWithBoxA()
	{
		Column column = new Column(0);
		column.pileBox("a");
		assertEquals("0: a", column.printState());
	}
	
	@Test
	public void columnWithTwoBoxes() 
	{
		Column column = new Column(0);
		column.pileBox("a");
		column.pileBox("b");
		assertEquals("0: a b", column.printState());
	}
	
	@Test
	public void removeBoxShould() throws Exception {
		Column column = new Column(0);
		column.pileBox("a");
		
		column.removeBox("a");
		
		assertEquals("0: ", column.printState());
	}
}
