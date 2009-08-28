
public class Bowling {

	int[] rounds;
	
	public Bowling(int[] rounds) {
		this.rounds = rounds;
	}

	public Integer getScore() {
		int result = 0;
		int beginningOfFrame = 0;
		
		while (beginningOfFrame < 20) {
			result += rounds[beginningOfFrame] + rounds [beginningOfFrame + 1];
			if(spare(beginningOfFrame))
				result += rounds[beginningOfFrame + 2];
			beginningOfFrame += 2;
		}
		return result;
	}

	private boolean spare(int beginningOfFrame) {
		return rounds[beginningOfFrame] + rounds[beginningOfFrame+1] == 10;
		
	}

}
