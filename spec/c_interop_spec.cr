require "./spec_helper"

lib C
  fun cos(value : Float64) : Float64
end

describe Student do
  it "can call C functions" do
    C.cos(0).should eq FILL_IN_THIS
  end
end
