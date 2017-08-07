require "./spec_helper"

describe Student do
  it "can create empty arrays" do
    empty_array=Array(Int32).new  # this is not Ruby: please notice the Type argument
    empty_array.class.to_s.should eq FILL_IN_THIS_STRING
    empty_array.size.should eq FILL_IN_THIS_NUMBER
  end

  it "can initialize arrays" do
    int_array=[4,3,2,1]
    int_array.size.should eq FILL_IN_THIS_NUMBER
    int_array[1].should eq FILL_IN_THIS_NUMBER
  end

end

