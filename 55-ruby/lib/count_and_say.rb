class CountAndSay
  
  attr_accessor :first
  
  def initialize(first)
    @first = first
  end
    
  def [](index)
    if index == 1
      @first
    elsif index <= 3
      (number_of(@first.to_s, self[index-1].to_s).to_s + '1').to_i
    else
    
      number_of_twos = number_of("2", self[index-1].to_s).to_s
      number_of_ones = number_of("1", self[index-1].to_s).to_s  
      fourth_term = number_of_twos + "2" + number_of_ones + "1"
      
      fourth_term.to_i
    end
  end
  
end

def number_of(char , string)
  string.count(char)
end