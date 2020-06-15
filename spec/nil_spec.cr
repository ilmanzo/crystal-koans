require "./spec_helper"

describe Student do
  # The Nil type has only one possible value: nil.
  it "knows nil is an object" do
    Nil.class.to_s.should eq FILL_IN_THIS
    nil.class.to_s.should eq FILL_IN_THIS
  end

  it "knows nil's methods" do
    nil.nil?.should eq FILL_IN_THIS
    nil.to_s.should eq FILL_IN_THIS
  end
end
