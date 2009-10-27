class Regex
  def initialize regex
    @regex = regex
  end

  def aceita? palavra
    letras = palavra.split("")
    letras[0] == @regex or @regex.empty?
  end
end

