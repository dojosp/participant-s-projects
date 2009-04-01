class Vizinhanca

  attr_accessor :tamanho_da_vizinhanca, :lista_de_vizinhos

  def initialize tamanho_da_vizinhanca
    @tamanho_da_vizinhanca = tamanho_da_vizinhanca
    @lista_de_vizinhos = []
    @tamanho_da_vizinhanca.times do
      @lista_de_vizinhos<<[]
    end
  end

  def adiciona morador , vizinho
    unless morador == vizinho
      @lista_de_vizinhos[morador] << vizinho
    end
  end

  def vizinhos
    @lista_de_vizinhos
  end

  def melhor_lugar
    lista_de_tamanhos=[]
    @lista_de_vizinhos.each do |lista_do_morador|
      lista_de_tamanhos << lista_do_morador.size
    end
    menor = @tamanho_da_vizinhanca-1
    lista_de_tamanhos.each do |numero_do_vizinhos|
      if numero_do_vizinhos < menor
        menor = numero_do_vizinhos
      end
    end
    melhores_lugares=[]
    lista_de_tamanhos.each_with_index do |v, morador|
      if v == menor
        melhores_lugares << morador
      end
    end
    melhores_lugares
  end
end
