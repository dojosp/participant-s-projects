class KakeBowling
  include Enumerable

  def self.game pins
    result = 0
    10.times do |frame|
      frame_position = frame*2
      result += KakeBowling.score(pins, frame_position) + KakeBowling.score(pins, frame_position+1)
      if pins[frame_position] == 10
        result += (pins[(frame+1)*2] + pins[(frame+1)*2+1])
      end
    end
    result
  end

  def self.score(pins, rollIndex)
    roll = pins[rollIndex]
    return roll if !roll.nil?
    return 0      
  end
end

