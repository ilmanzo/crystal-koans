require "./spec_helper"

describe Student do
  it "can create empty arrays" do
    empty_array = Array(Int32).new # this is not Ruby: please notice the Type argument
    empty_array.class.to_s.should eq FILL_IN_THIS
    empty_array.size.should eq FILL_IN_THIS
  end

  it "can initialize arrays" do
    int_array = [4, 3, 2, 1]
    int_array.size.should eq FILL_IN_THIS
    int_array[1].should eq FILL_IN_THIS
  end

  it "knows special arrays" do
    array1 = %w(one two three)       # strings
    array2 = %i(apple banana orange) # symbols
    array1.size.should eq FILL_IN_THIS
    array1[1].should eq FILL_IN_THIS
    array2[2].should eq FILL_IN_THIS
  end
end
