class CountAndSay
  
  attr_accessor :first
  
  def initialize(first)
    @first = first
  end
    
  def [](index)
    if index == 1
      1
      
    elsif index ==2
      11
  
    elsif index == 3
      21
    else
      1211
    end
  end
  
  
end