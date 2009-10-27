class Regex
  def initialize regex
    @regex = regex
  end

  def aceita? string
    return true if @regex.empty?
    string == @regex
  end

end

