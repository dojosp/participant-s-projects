class Regex
  def initialize regex
    @regex = regex
  end

  def regex_inteira? palavra
    @regex == palavra.join
  end

  def aceita? palavra
    letras = palavra.split("")
    letras.each_with_index do |letra_palavra, indice|
      return true if regex_inteira? letras[indice ... (indice + @regex.size)]
    end
    @regex == palavra
  end

end

