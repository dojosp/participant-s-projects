class KakeBowling

  def self.game pins
    result = 0
    pins.each_with_index do |roll, index|
      result += roll if not roll.nil?
      if roll == 10
        if pins[index+1].nil?
          result += (pins[index+2] + pins[index+3])
        else
          result += (pins[index+1] + pins[index+2])
          break
        end
      end
    end
    result
  end
end
