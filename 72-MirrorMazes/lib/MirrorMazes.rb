class MirrorMaze
  attr_reader :entrada, :saida

  def borda? linha, coluna, size
    (linha == 0 or
     coluna == 0 or
     linha == size or
     coluna == size)
  end

  def initialize mapa
    @mapa = mapa.split
    @mapa.each_with_index do |string, linha|
      linha_array = string.split ""
      linha_array.each_with_index do |caracter, coluna|
        if borda?(linha, coluna, string.size-1) and caracter == '.'
          @entrada = [linha, coluna] if @entrada.nil?
          @saida = [linha, coluna]
        end
      end
    end
  end
end
