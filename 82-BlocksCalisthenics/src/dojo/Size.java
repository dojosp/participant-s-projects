package dojo;

public class Size {

	private final int size;

	public Size(int size) {
		this.size = size;
	}

	@Override
	public boolean equals(Object object) {
		Size otherSize = (Size) object;
		return otherSize.size == size;
	}
}
