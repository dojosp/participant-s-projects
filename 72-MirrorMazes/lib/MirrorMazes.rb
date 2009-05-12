class MirrorMaze
  attr_reader :entrada, :saida

  def initialize mapa
    @mapa = mapa.split
    @mapa.each_with_index do |linha, indice|
      indice_caracter = 0
      linha.each_char do |caracter|
        @entrada = [indice, indice_caracter] if caracter == '.' and @entrada.nil?
        @saida = [indice, indice_caracter] if caracter == '.'
        indice_caracter += 1
      end
    end
  end
end
