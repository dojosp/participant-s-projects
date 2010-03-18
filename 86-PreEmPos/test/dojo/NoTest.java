package dojo;

import static org.junit.Assert.*;

import org.junit.Test;

public class NoTest {
	@Test
	public void criarArvoreComUmNo() throws Exception {
		No raiz = new No("R");
		assertEquals("R", raiz.getConteudo());
		assertNull(raiz.getNoEsquerdo());
		assertNull(raiz.getNoDireito());
	}
	
	@Test
	public void criarArvoreComRaizEEsquerdo() throws Exception {
		No raiz = new No("R");
		No esquerda = new No("E");
		raiz.addEsquerda(esquerda);
		assertEquals(esquerda, raiz.getNoEsquerdo());
		assertNull(raiz.getNoDireito());
	}

	@Test
	public void criarArvoreComRaizEDireito() throws Exception {
		No raiz = new No("R");
		No direita = new No("D");
		raiz.addDireita(direita);
		assertNull(raiz.getNoEsquerdo());
		assertEquals(direita, raiz.getNoDireito());
	}

	@Test
	public void criarArvoreComRaizEEsquerdoEDireito() throws Exception {
		No raiz = new No("R");
		No esquerda = new No("E");
		No direita = new No("D");
		raiz.addEsquerda(esquerda);
		raiz.addDireita(direita);
		assertEquals(esquerda, raiz.getNoEsquerdo());
		assertEquals(direita, raiz.getNoDireito());
	}
	@Test
	public void comparaNosSemFilhos() throws Exception {
		No no1 = new No("R");
		No no2 = new No("R");
		
		assertEquals(no1, no2);
	}
	@Test
	public void comparaNosCom1FilhoIgual() throws Exception {
		No no1 = new No("R");
		No esquerda1 = new No("E");
		no1.addEsquerda(esquerda1);
		
		No no2 = new No("R");
		No esquerda2 = new No("E");
		no2.addEsquerda(esquerda2);
		
		assertEquals(no1, no2);
	}
	@Test
	public void comparaNosCom1FilhoDiferente() throws Exception {
		No no1 = new No("R");
		No esquerda1 = new No("E");
		no1.addEsquerda(esquerda1);
		
		No no2 = new No("R");
		No esquerda2 = new No("S");
		no2.addEsquerda(esquerda2);
		
		assertFalse(no1.equals(no2));
	}
	@Test
	public void comparaNosCom1FilhoIgualEmLugarDiferente() throws Exception {
		No no1 = new No("R");
		No esquerda1 = new No("F");
		no1.addEsquerda(esquerda1);
		
		No no2 = new No("R");
		No direita2 = new No("F");
		no2.addDireita(direita2);
		
		assertFalse(no1.equals(no2));
	}
	@Test
	public void comparaNosQueSoTemUmFilhoDeDiferenca() throws Exception {
		No no1 = new No("R");
		No esquerda1 = new No("E");
		no1.addEsquerda(esquerda1);
		No direita1 = new No("D");
		no1.addDireita(direita1);
		
		No no2 = new No("R");
		No esquerda2 = new No("E");
		no2.addEsquerda(esquerda2);
		No direita2 = new No("A");
		no2.addDireita(direita2);		
		
		assertFalse(no1.equals(no2));
	}
}
