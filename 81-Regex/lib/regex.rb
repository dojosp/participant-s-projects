class Regex
  def initialize regex
    @regex = regex
  end

  def regex_inteira? palavra
    letras_regex = @regex.split("")
    letras_batidas = 0
    while palavra[letras_batidas] == letras_regex[letras_batidas] and
          letras_batidas < letras_regex.size
      letras_batidas += 1
    end
    letras_batidas == letras_regex.size
  end

  def aceita? palavra
    letras = palavra.split("")
    letras.each_with_index do |letra_palavra, indice|
      return true if regex_inteira? letras[indice .. -1]
    end
    @regex == palavra
  end

end

