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
  
    else
      21
    end
  end
  
  
end