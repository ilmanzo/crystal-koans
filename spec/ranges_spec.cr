require "spec_helper"

describe Student do
  it "knows inclusive ranges" do
    first_range = 1..10
    other_range = Range.new(1, 10) # alternate syntax
    first_range.size.should eq FILL_IN_THIS
    first_range.exclusive?.should eq FILL_IN_THIS
    other_range.size.should eq FILL_IN_THIS
    other_range.exclusive?.should eq FILL_IN_THIS
  end

  it "knows exclusive ranges" do
    first_range = 1...10                            # notice the triple dot
    other_range = Range.new(1, 10, exclusive: true) # alternate syntax
    first_range.size.should eq FILL_IN_THIS
    first_range.exclusive?.should eq FILL_IN_THIS
    other_range.size.should eq FILL_IN_THIS
    other_range.exclusive?.should eq FILL_IN_THIS
  end
end
