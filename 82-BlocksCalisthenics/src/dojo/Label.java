package dojo;

public class Label {

	private int label;
	public Label(int label) {
		this.label = label;
	}

	@Override
	public boolean equals(Object object) {
		Label other = (Label) object;
		return label == other.label;
	}
}
