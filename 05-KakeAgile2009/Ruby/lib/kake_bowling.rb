class KakeBowling
  
  def self.game pins
    result = 0
    pins.each_with_index do |roll, index|
      result += roll if (!roll.nil? && index < 20)
      if roll == 10
        result += (pins[index+2] + pins[index+3])
      end
    end
    result
  end
end
