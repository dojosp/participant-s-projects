package dojo;

public class Block {
	private final Label label;

	public Block(Label label) {
		this.label = label;
	}

	@Override
	public boolean equals(Object object) {
		Block otherBlock = (Block) object;
		Label otherLabel = otherBlock.label;
		return label.equals(otherLabel);
	}
}
