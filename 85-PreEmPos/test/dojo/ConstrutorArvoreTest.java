package dojo;

import static org.junit.Assert.assertEquals;

import java.util.TreeSet;

import org.junit.Test;

public class ConstrutorArvoreTest {
	@Test
	public void deveriaConstruirArvoreComUmNo() throws Exception {
		ConstrutorArvore construtor = new ConstrutorArvore("R", "R");
		No arvore = new No("R");
		assertEquals(arvore, construtor.getArvore());
	}
	
	@Test
	public void deveriaConstruirArvoreComDoisNosAEsquerda() throws Exception {
		ConstrutorArvore construtor = new ConstrutorArvore("RE", "ER");
		No raiz = new No("R");
		raiz.addEsquerda(new No("E"));
		assertEquals(raiz, construtor.getArvore());
	}
}
