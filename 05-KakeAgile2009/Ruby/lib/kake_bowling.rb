class KakeBowling
  include Enumerable

  def self.game pins
    result = 0
    10.times do |frame|
      roll1 = pins[frame*2]
      roll2 = pins[frame*2+1]
      result += roll1 if !roll1.nil?
      result += roll2 if !roll2.nil?      
      if roll1 == 10
        result += (pins[(frame+1)*2] + pins[(frame+1)*2+1])
      end
    end
    result
  end
end
