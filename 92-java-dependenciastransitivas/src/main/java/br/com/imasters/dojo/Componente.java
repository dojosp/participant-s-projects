package br.com.imasters.dojo;

import java.util.Arrays;
import java.util.List;

final public class Componente {

	private final String nome;
	private final List<Componente> dependencias;

	public Componente(final String nome, final Componente... dependencias) {
		this.nome = nome;
		this.dependencias = Arrays.asList(dependencias);
	}

	public List<Componente> getDependencias() {
		return dependencias;
	}

	@Override
	public String toString() {
		return nome;
	}

}
