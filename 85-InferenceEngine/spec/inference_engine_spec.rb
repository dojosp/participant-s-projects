require "inference_engine"

describe InferenceEngine do
    it "should be able to create new inference engine" do
      inference_engine = InferenceEngine.new
      inference_engine.class.should be InferenceEngine
    end

    it "should be able to learn pharses" do
      inference_engine = InferenceEngine.new
      result = inference_engine.interpret_phrase "All mammals are hairy animals."
      result.should be_equal :ok
    end

    it "should be able to learn pharses" do
      inference_engine = InferenceEngine.new
      result = inference_engine.interpret_phrase "All mammals are hairy animals?"
      result.should_not be_equal :ok
    end

    it "should be able to answer that hairy animals are mammals when I say so" do
      inference_engine = InferenceEngine.new
      result = inference_engine.interpret_phrase "All mammals are hairy animals."
      result.should be_equal :ok
      result = inference_engine.interpret_phrase "All mammals are hairy animals?"
      result.should be_equal :yes
    end

    it "should be able to answer that don't know when I don't say that mammals are animals" do
      inference_engine = InferenceEngine.new
      result = inference_engine.interpret_phrase "All mammals are hairy animals."
      result.should be_equal :ok
      result = inference_engine.interpret_phrase "All mammals are animals?"
      result.should be_equal :i_dont_know
    end

    it "should be able to answer that don't know when I don't say that mammals are fishes" do
      inference_engine = InferenceEngine.new
      result = inference_engine.interpret_phrase "All mammals are hairy animals."
      result.should be_equal :ok
      result = inference_engine.interpret_phrase "All mammals are fishes?"
      result.should be_equal :i_dont_know
    end

    it "should be able to say I know when I teach twice" do
      inference_engine = InferenceEngine.new
      result = inference_engine.interpret_phrase "All mammals are hairy animals."
      result.should be_equal :ok
      nference_engine = InferenceEngine.new
      result = inference_engine.interpret_phrase "All mammals are hairy animals."
      result.should be_equal :i_know
    end

end

