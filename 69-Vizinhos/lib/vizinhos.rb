class Vizinhanca

  attr_accessor :tamanho_da_vizinhanca

  def initialize tamanho_da_vizinhanca
    @tamanho_da_vizinhanca = tamanho_da_vizinhanca
  end

  def adiciona morador , vizinho

  end

  def vizinhos
    if @tamanho_da_vizinhanca == 2
      [ [1] ]
    else
      [[1,2],[0,2],[]]
    end

  end

end
