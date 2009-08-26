
public class Bowling {

	int[] rounds;
	
	public Bowling(int[] rounds) {
		this.rounds = rounds;
	}

	public Integer getScore() {
		int result = 0;
		for (int i=0; i<10;i++)
			result += rounds[i];
		return result;
	}

}
