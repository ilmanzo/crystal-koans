require "./spec_helper"

def dummyfunc
  "foobar"
end

def double(x : Int)
  x*2
end

describe Student do
  it "knows functions" do
    value=dummyfunc # function invocations returns a value
    value.should eq FILL_IN_THIS
  end

  it "knows function parameters" do
    number=double(5)
    number.should eq FILL_IN_THIS
    another=double 21   # parentheses can be omitted
    another.should eq FILL_IN_THIS
  end

  it "knows yield" do
  end

  it "knows blocks passing" do
  end

  it "knows splat parameters" do
  end
end
