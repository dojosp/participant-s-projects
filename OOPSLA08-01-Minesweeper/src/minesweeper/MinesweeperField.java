package minesweeper;

public class MinesweeperField {

	private int[][] field;

	public MinesweeperField(int lines, int columns) {
		field = new int[lines + 2][columns + 2];
	}

	private void increaseCount(int lineIndex, int columnIndex) {
		if(field[lineIndex][columnIndex] >= 0)
			field[lineIndex][columnIndex]++;
	}
	
	public MinesweeperField mine(int lineIndex, int columnIndex) {
		lineIndex++;
		columnIndex++;

// Useless code (not-test required) introduced by a too big step		
//		increaseCount(lineIndex - 1,columnIndex - 1);
		increaseCount(lineIndex - 1,columnIndex);
		increaseCount(lineIndex - 1,columnIndex + 1);
		increaseCount(lineIndex,columnIndex + 1);
		increaseCount(lineIndex + 1,columnIndex + 1);
		increaseCount(lineIndex + 1,columnIndex);
//		increaseCount(lineIndex + 1,columnIndex - 1);
//		increaseCount(lineIndex,columnIndex - 1);
		field[lineIndex][columnIndex] = -1;

		return this;
	}

	public String[] getResult() {
		String[] result = new String[field.length - 2];
		for (int i = 1; i < field.length - 1; i++) {
			String line = getResultLine(i);
			result[i - 1] = line;
		}
		return result;
	}

	private String getResultLine(int lineIndex) {
		String result = "";
		for (int j = 1; j < field[lineIndex].length - 1; j++) {
			if (field[lineIndex][j] < 0)
				result += "*";
			else
				result += field[lineIndex][j];
		}
		return result;
	}

}
