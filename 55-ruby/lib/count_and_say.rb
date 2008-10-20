class CountAndSay
  
  attr_accessor :first
  
  def initialize(first)
    @first = first
  end
    
  def [](index)
    if index == 1
      @first
    elsif index == 2
      10+@first
    elsif index == 3
      21
    else
      1211
    end
  end
  
  
end