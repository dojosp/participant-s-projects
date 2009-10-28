class Regex
  def initialize regex
    @regex = regex
  end

  def aceita? palavra
    letras = palavra.split("")

    letras_regex = @regex.split("")

    letras.each_with_index do |letra_palavra, indice|
      letras_batidas = 0
      while letras[indice+letras_batidas] == letras_regex[letras_batidas] and
            letras_batidas < letras_regex.size
        letras_batidas+=1
      end
      if letras_batidas == letras_regex.size
        return true
      end
    end

    @regex == palavra
  end
end

