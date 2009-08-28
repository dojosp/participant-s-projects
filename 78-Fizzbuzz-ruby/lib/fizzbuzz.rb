

class Fizzbuzz

  def initialize
    @contador = 0
  end

  def divide?(x,y) 
    if x % y == 0
      true
    else
      false
    end
  end
  
  def tres_divide?(x)
    divide?(x,3)
  end

  def cinco_divide?(x)
    divide?(x,5)
  end

  def contem?(y,x)
    x.to_s.include?(y.to_s)
  end

  def contem_tres?(x)
    contem? 3, x
  end

  def contem_cinco?(x)
    contem? 5,x
  end
  
  def fizz?
    if tres_divide?(@contador) || contem_tres?(@contador) 
      true
    else
      false
    end
  end

  def buzz?
    if cinco_divide?(@contador) || contem_cinco?(@contador)
      true
    else
      false
    end
  end

  def next
    @contador += 1
    
    resultado = ""

    if fizz? 
      resultado += "Fizz"
    end
    
    if buzz?
      if resultado != "" 
        resultado += "buzz"
      else 
        resultado += "Buzz"
      end
    end
    
    if resultado == "" 
      resultado = @contador.to_s 
    end

    resultado
  end
end
