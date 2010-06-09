package test;
import static org.junit.Assert.assertEquals;

import org.junit.Ignore;
import org.junit.Test;

import src.StorageHouse;

public class StorageHouseTest 
{
	@Test
	public void shouldCreateStorageHouse() {
		StorageHouse storageHouse = new StorageHouse(4);
		assertEquals(4, storageHouse.getCapacity());
	}
	
	@Test
	public void canPrintTheState() {
		StorageHouse sh = new StorageHouse(1);
		assertEquals("0: a\n", sh.printState());
	}
	
	@Test
	public void canPrintStateWithCapacity2()
	{
		StorageHouse storageHouse = new StorageHouse(2);
		assertEquals("0: a\n1: b\n", storageHouse.printState());
	}
	
	@Test @Ignore("Needs to have remove working on Column")
	public void canMoveBoxAOntoBoxB()
	{
		StorageHouse storageHouse = new StorageHouse(2);
		storageHouse.moveOnto("a", "b");
		assertEquals("0:\n1: b a\n", storageHouse.printState());
	}
	
}
