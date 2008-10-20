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
      second_term = self[2].to_s
      second_term[0,1] = '2'
      second_term.to_i
    else
      third_term = self[3].to_s
      fourth_term = "1" + third_term + "1"
      fourth_term.to_i
    end
  end
  
end

def number_of(char , string)
  string.length
end