require "./spec_helper"

describe Student do
  it "knows string quoting" do
    string = "Hello, World"
    long_string = %{
		It was the best of times,
		It was the worst of times.
	}
    string.size.should eq FILL_IN_THIS_NUMBER
    long_string.size.should eq FILL_IN_THIS_NUMBER
  end

  it "can concatenate two strings" do
    hi = "Hello, "
    there = "World"
    hi += there
    hi.should eq FILL_IN_THIS_STRING
  end

  it "interpolates values" do
    value = 123
    string = "The value is #{value}"
    string.should eq FILL_IN_THIS_STRING
  end

  it "can extract substrings from a string" do
    string = "Bacon, lettuce and tomato"
    substr1 = string[7, 3]
    substr2 = string[7..9]
    substr1.should eq FILL_IN_THIS_STRING
    substr2.should eq FILL_IN_THIS_STRING
  end
end
