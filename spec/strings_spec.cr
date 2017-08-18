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
end
