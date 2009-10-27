class Regex
  def initialize regex
    @regex = regex
  end

  def aceita? palavra
    letras = palavra.split("")

    letras_regex = @regex.split("")
    primeira = letras_regex[0]



    aceita = @regex.empty?
    letras.each_with_index do |letra, indice|
      if letra == primeira
        if(letras_regex.size >= 2)
          segunda = letras_regex[1]
          aceita ||= letras[indice+1] == segunda
        else
          aceita = true
        end
      end
    end

    aceita
  end
end

