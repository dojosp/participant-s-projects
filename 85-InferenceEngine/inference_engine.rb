require "knowledge"

class InferenceEngine

  def initialize
    @knowledgment = Knowledge.new
  end

  def interpret_phrase phrase

    if phrase.include?"."
      if @knowledgment.do_i_know_about_it_yet? phrase
        return :i_know
      else
        @knowledgment << phrase
        return :ok
      end
    end

    return :i_dont_know unless @knowledgment.do_i_know_about_it_yet? phrase
    :yes
  end

end

