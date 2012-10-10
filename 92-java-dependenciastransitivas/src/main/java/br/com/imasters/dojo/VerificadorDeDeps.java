package br.com.imasters.dojo;

import java.util.ArrayList;
import java.util.List;

final public class VerificadorDeDeps {

	public String dependencias(final Componente componente) {
		String resultado = "" + componente;
		for (Componente dep : componente.getDependencias()) {
			resultado += " " + dep;
		}
		return resultado;
	}

	public String[] dependencias(final Componente... componentes) {

		List<String> deps = new ArrayList<String>();
		for (Componente comp : componentes) {
			deps.add(dependencias(comp));
		}
		return deps.toArray(new String[0]);
	}
}
