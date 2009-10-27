class Regex
  def initialize regex
    @regex = regex
  end

  def aceita? string
    string == @regex or @regex.empty?
  end

end

