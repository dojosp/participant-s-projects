class MirrorMaze
  attr_reader :entrada, :saida

  def initialize mapa
    @mapa = mapa.split
    @mapa.each_with_index do |string, linha|
      linha_array = string.split ""
      linha_array.each_with_index do |caracter, coluna|
        if caracter == '.'
          @entrada = [linha, coluna] if @entrada.nil?
          @saida = [linha, coluna]
        end
      end
    end
  end
end
