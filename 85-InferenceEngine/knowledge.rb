class Knowledge

  def initialize
    @knowledgment = []
  end

  def << phrase
    @knowledgment << phrase.slice(0, phrase.size-1)
  end

  def do_i_know_about_it_yet? phrase
    phrase = phrase.slice 0, phrase.size-1
    return @knowledgment.include?phrase
  end

end

