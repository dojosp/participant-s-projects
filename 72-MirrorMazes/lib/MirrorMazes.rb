class MirrorMaze
  def initialize mapa
    @mapa = mapa.split
  end

  def entrada
    @mapa.each_with_index do |linha, indice|
      indice_caracter = 0
      linha.each_char do |caracter|
        return [indice, indice_caracter] if caracter == '.'
        indice_caracter += 1
      end
    end
    [0,1]
  end

  def saída
    [0,1]
  end
end
