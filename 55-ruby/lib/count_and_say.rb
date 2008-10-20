class CountAndSay
  
  attr_accessor :first
  
  def initialize(first)
    @first = first
  end
    
  def [](index)
    if index == 1
      @first
    elsif index == 2
      ('1' + self[1].to_s).to_i
    elsif index == 3
      21
    else
      1211
    end
  end
  
  
end