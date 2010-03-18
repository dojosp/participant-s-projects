package dojo;

import java.util.TreeSet;

public class ConstrutorArvore {
	private No raiz;
	

	
	public ConstrutorArvore(String preOrdem, String emOrdem) {
		raiz = new No("R");
	}
	
	public No getArvore() {
		
		return raiz;
	}
}
