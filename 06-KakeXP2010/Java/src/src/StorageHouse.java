package src;

import java.util.ArrayList;
import java.util.List;

public class StorageHouse {
	private List<Column> columns;

	public StorageHouse(int capacity) {
		this.columns = new ArrayList<Column>(capacity);
		for (int i = 0; i < capacity; ++i) {
			Column column = new Column(i);
			columns.add(column);
			column.pileBox(this.getDefaultBoxName(i));
		}
	}

	public int getCapacity() {
		return columns.size();
	}

	public String printState() {
		StringBuffer sb = new StringBuffer();
		for (Column column : columns) {
			sb.append(column.printState() + "\n");
		}
		return sb.toString();
	}

	private String getDefaultBoxName(int i) {
		String boxNames = "abcdefghijklmnopqrst";
		return boxNames.substring(i, i + 1);
	}

	public void moveOnto(String boxSource, String boxTarget) {
		Column sourceColumn = columns.get(0);
		Column targetColumn = columns.get(1);
		sourceColumn.removeBox(boxSource);
		targetColumn.pileBox(boxSource);
	}
}
