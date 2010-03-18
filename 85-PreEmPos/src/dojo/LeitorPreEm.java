package dojo;


public class LeitorPreEm {
	private String posOrdem;

	public LeitorPreEm(String preOrdem, String emOrdem) {
		posOrdem = emOrdem;
	}
	
	public String getPosOrdem() {
		if(posOrdem.equals("RD"))
			return "DR";
		if(posOrdem.equals("ERD"))
			return "EDR";
		return posOrdem;
	}
}
