require "./spec_helper"

describe Student do
  it "knows the truth" do
    true.should eq(FILL_IN_TRUE_OR_FALSE) # what is truth ?
  end

  it "knows boolean algebra" do
    a = true
    b = false
    c = a | b
    c.should eq(FILL_IN_TRUE_OR_FALSE)
    d = a & b
    d.should eq(FILL_IN_TRUE_OR_FALSE)
  end

  it "knows true stuff #1" do
    a = 0
    if a
      b = true
    else
      b = false
    end
    b.should eq(FILL_IN_TRUE_OR_FALSE)
  end

  it "knows true stuff #2" do
    a = Nil
    if a
      b = true
    else
      b = false
    end
    b.should eq(FILL_IN_TRUE_OR_FALSE)
  end
end
