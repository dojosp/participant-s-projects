require "rubygems"
require "spec"

require "ocr"

describe BankOCR do
  it "should parse one" do
    one = ["   ",
           "  |",
           "  |"]
		BankOCR.parse_digit(one).should == 1
  end

  it "should parse two" do
    two = [" _ ",
           " _|",
           "|_ "]
		BankOCR.parse_digit(two).should == 2
  end

  it "should parse three" do
    three = [" _ ",
             " _|",
             " _|"]
		BankOCR.parse_digit(three).should == 3
  end

  it "should parse four" do
    four = ["   ",
             "|_|",
             "  |"]
		BankOCR.parse_digit(four).should == 4
  end

  it "should parse five" do
    five = [ " _ ",
             "|_ ",
             " _|"]
		BankOCR.parse_digit(five).should == 5
  end

  it "should parse six" do
    six = [  " _ ",
             "|_ ",
             "|_|"]
		BankOCR.parse_digit(six).should == 6
  end

  it "should parse seven" do
    seven = [" _ ",
             "  |",
             "  |"]
		BankOCR.parse_digit(seven).should == 7
  end

	it "should parse eleven" do
		one = ["   ",
           "  |",
           "  |"]
	  eleven = [one, one]
	BankOCR.parse_digit(eleven).should == 11
	end

	it "should parse twelve" do
		one = ["   ",
           "  |",
           "  |"]
   two = [" _ ",
           " _|",
           "|_ "]
	 twelve = [one, two]
	BankOCR.parse_digit(twelve).should == 12
	end
	
	it 'should parse one hundred and thirty one' do
			one = ["   ",
           "  |",
           "  |"]
		one3 = [one]*3
		BankOCR.parse_digit(one3).should == 111
	end
end