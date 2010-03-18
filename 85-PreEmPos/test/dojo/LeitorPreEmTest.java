package dojo;

import static org.junit.Assert.assertEquals;

import org.junit.Test;

public class LeitorPreEmTest {
	@Test
	public void deveriaLerArvoreComUmSoNoA() throws Exception {
		LeitorPreEm leitor = new LeitorPreEm("A", "A");
		assertEquals("A", leitor.getPosOrdem());
	}
	
	@Test
	public void deveriaLerArvoreComUmSoNoZ() throws Exception {
		LeitorPreEm leitor = new LeitorPreEm("Z", "Z");
		assertEquals("Z", leitor.getPosOrdem());
	}
	
	@Test
	public void deveriaLerArvoreComDoisNosRaizEEsquerda() throws Exception {
		LeitorPreEm leitor = new LeitorPreEm("RE", "ER");
		assertEquals("ER", leitor.getPosOrdem());
	}

	@Test
	public void deveriaLerArvoreComDoisNosRaizEDireita() throws Exception {
		LeitorPreEm leitor = new LeitorPreEm("RD", "RD");
		assertEquals("DR", leitor.getPosOrdem());
	}
	
	@Test
	public void deveriaLerArvoreComTresNosBalanceada() throws Exception {
		LeitorPreEm leitor = new LeitorPreEm("RED", "ERD");
		assertEquals("EDR", leitor.getPosOrdem());
	}
}
