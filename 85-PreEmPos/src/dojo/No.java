package dojo;

public class No {
	private String conteudo;
	private No esquerda;
	private No direita;

	public No(String conteudo) {
		this.conteudo = conteudo;
	}

	public String getConteudo() {
		return conteudo;
	}

	public No getNoEsquerdo() {
		return esquerda;
	}

	public No getNoDireito() {
		return direita;
	}

	public void addEsquerda(No esquerda) {
		this.esquerda = esquerda;
	}

	public void addDireita(No direita) {
		this.direita = direita;
	}

	@Override
	public boolean equals(Object obj) {
		No outro = (No) obj;
		if(outro == null)
			return false;
		
		boolean conteudosIguais = conteudo.equals(outro.conteudo);
		boolean esquerdaIgual = igual(esquerda, outro.esquerda);
		boolean direitaIgual = igual(direita, outro.direita);
		
		return conteudosIguais && esquerdaIgual && direitaIgual;
	}

	private boolean igual(No no, No outro) {
		if (no == null && outro != null) return false;
		return (no == null && outro == null) || no.equals(outro);
	}
}
