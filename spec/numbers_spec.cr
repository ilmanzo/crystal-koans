require "spec_helper"

describe Student do
  it "can do the basic math operations" do
    a = 3
    b = 2
    c = a + b
    c.should eq FILL_IN_THIS
    d = a * b
    d.should eq FILL_IN_THIS
  end

  it "knows floating point" do
    n = 1e10
    n.class.should eq FILL_IN_THIS
  end

  it "knows hexadecimal" do
    n = 0xCAFE
    n.should eq FILL_IN_THIS
  end

  it "can convert numbers to strings" do
    a = 42
    b = a.to_s
    b.should eq FILL_IN_THIS
  end

  it "can convert strings to numbers" do
    a = "42"
    b = a.to_i
    b.should eq FILL_IN_THIS
    h = "FF"
    i = h.to_i(16)
    i.should eq FILL_IN_THIS
  end
end
