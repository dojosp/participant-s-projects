class KakeBowling
  include Enumerable

  def self.game pins
    result = 0
    10.times do |frame|
      frame_position = frame*2
      result += score(pins, frame_position) + score(pins, frame_position+1)
      if got_strike(pins, frame_position)
        result += (pins[frame_position+2] + pins[frame_position+2+1])
      end
    end
    result
  end

  def self.got_strike(pins, pos)
    pins[pos] == 10
  end

  def self.score(pins, rollIndex)
    roll = pins[rollIndex]
    return roll if !roll.nil?
    return 0      
  end
end

