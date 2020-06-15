require "./spec_helper"

describe Student do
  it "knows the truth" do
    true.should eq FILL_IN_THIS # what is truth ?
  end

  it "knows boolean algebra" do
    a = true
    b = false
    c = a | b
    c.should eq FILL_IN_THIS
    d = a & b
    d.should eq FILL_IN_THIS
  end

  it "knows true stuff #1" do
    a = 0

    if a
      b = true
    else
      b = false
    end

    b.should eq FILL_IN_THIS
  end

  it "knows true stuff #2" do
    a = nil

    if a
      b = true
    else
      b = false
    end

    b.should eq FILL_IN_THIS
  end
end
