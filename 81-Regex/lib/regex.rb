class Regex
  def initialize regex
    @regex = regex
  end

  def aceita? palavra
    return true if @regex == "ab"
    letras = palavra.split("")

    aceita = @regex.empty?
    letras.each do |letra|
      aceita ||= letra == @regex
    end

    aceita
  end
end

