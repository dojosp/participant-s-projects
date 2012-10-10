package br.com.imasters.dojo;

import static org.junit.Assert.assertArrayEquals;
import static org.junit.Assert.assertEquals;

import org.junit.Test;

final public class DojoTest {

	@Test
	public void deveDevolverABSeADependeDeBOO() {
		Componente b = new Componente("B");
		Componente a = new Componente("A", b);
		VerificadorDeDeps v = new VerificadorDeDeps();
		assertEquals("A B", v.dependencias(a));
	}

	@Test
	public void deveDevolverACSeADependeDeCOO() {
		Componente c = new Componente("C");
		Componente a = new Componente("A", c);
		VerificadorDeDeps v = new VerificadorDeDeps();
		assertEquals("A C", v.dependencias(a));
	}

	@Test
	public void deveDevolverABCSeADependeDeBCOO() {
		Componente c = new Componente("C");
		Componente b = new Componente("B");
		Componente a = new Componente("A", b, c);
		VerificadorDeDeps v = new VerificadorDeDeps();
		assertEquals("A B C", v.dependencias(a));
	}

	@Test
	public void deveDevolverACDSeADependeDeCDOO() {
		Componente c = new Componente("C");
		Componente d = new Componente("D");
		Componente a = new Componente("A", c, d);
		VerificadorDeDeps v = new VerificadorDeDeps();
		assertEquals("A C D", v.dependencias(a));
	}

	@Test
	public void deveDevolverAB_CDSeADependeDeAB_CD() {
		Componente d = new Componente("D");
		Componente c = new Componente("C", d);
		Componente b = new Componente("B");
		Componente a = new Componente("A", b);

		VerificadorDeDeps v = new VerificadorDeDeps();
		assertArrayEquals(new String[] { "A B", "C D" }, v.dependencias(a, c));

	}

	@Test
	public void testeTransitivo() {

		Componente c = new Componente("C");
		Componente b = new Componente("B", c);
		Componente a = new Componente("A", b);

		VerificadorDeDeps v = new VerificadorDeDeps();
		assertArrayEquals(new String[] { "A B", "C D" }, v.dependencias(a, b));
	}
}
