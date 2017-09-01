require "./spec_helper"

describe Student do
  it "knows string quoting" do
    string = "Hello, World"
    long_string = %{
		It was the best of times,
		It was the worst of times.
	}
    string.size.should eq FILL_IN_THIS
    long_string.size.should eq FILL_IN_THIS
    # in Crystal you cannot use single quote for strings
    # also refer to https://crystal-lang.org/docs/syntax_and_semantics/literals/string.html
  end

  it "can concatenate two strings" do
    hi = "Hello, "
    there = "World"
    hi += there
    hi.should eq FILL_IN_THIS
  end

  it "interpolates values" do
    value = 123
    string = "The value is #{value}"
    string.should eq FILL_IN_THIS
  end

  it "can extract substrings from a string" do
    string = "Bacon, lettuce and tomato"
    substr1 = string[7, 3]
    substr2 = string[7..9]
    substr1.should eq FILL_IN_THIS
    substr2.should eq FILL_IN_THIS
  end

  it "can split strings" do
    string = "the:rain:in:spain"
    words = string.split(/:/)
    words.size.should eq FILL_IN_THIS
  end

  it "can join strings" do
    words = ["Now", "is", "the", "time"]
    words.join.should eq FILL_IN_THIS
  end

  it "knows that strings are unique objects" do
    a = "a string"
    b = "a string"
    result = (a.object_id == b.object_id)
    result.should eq FILL_IN_THIS
  end
end
