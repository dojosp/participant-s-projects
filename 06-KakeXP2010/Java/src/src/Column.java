package src;

public class Column {
	private final int columnLabel;
	private String boxLabel;

	public Column(int columnLabel) {
		this.columnLabel = columnLabel;
		boxLabel = "";
	}

	public String printState() {
		return columnLabel + ": " + boxLabel;
	}

	public void pileBox(String boxLabel) {
		this.boxLabel += (this.boxLabel.isEmpty() ? "" : " ") + boxLabel;
	}

	public void removeBox(String boxLabel) {
		
	}
}
