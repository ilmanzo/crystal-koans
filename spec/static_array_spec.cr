require "spec_helper"

# A fixed-size, stack allocated array.

describe Student do
  it "can initialize a static array" do
    arr = StaticArray(Int32, 3).new(42)
    arr[0].should eq FILL_IN_THIS
  end

  it "can initialize a static array with a block" do
    arr = StaticArray(Int32, 10).new { |i| i * 2 }
    arr[7].should eq FILL_IN_THIS
  end

  it "knows methods on static arrays" do
    arr = StaticArray(String, 5).new("")
    arr.fill("Ehi!")
    arr[4].should eq FILL_IN_THIS
  end

  #TODO add more tests
end
