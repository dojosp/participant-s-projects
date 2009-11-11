package dojo;

import java.util.Arrays;
import java.util.List;

public class Pile {
	private final List<Block> blocks;

	public Pile(Block... arrayOfBlocks) {
		blocks = Arrays.asList(arrayOfBlocks);
	}

	@Override
	public boolean equals(Object object) {
		Pile otherPile = (Pile) object;
		List<Block> otherBlocks = otherPile.blocks;
		return blocks.equals(otherBlocks);
	}
}
