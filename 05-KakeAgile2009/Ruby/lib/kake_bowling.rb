class KakeBowling

  def self.game pins
    result = 0
    pins.each { |i| result += i }
    result
  end
end
