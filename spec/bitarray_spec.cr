require "spec_helper"

# BitArray is an array data structure that compactly stores bits.

# Bits externally represented as Bools are stored internally as UInt32s.
# The total number of bits stored is set at creation and is immutable.

require "bit_array"

describe Student do
  it "know how to initialize BitArrays" do
    ba = BitArray.new(12)
    ba[2] = true
    ba[0].should eq FILL_IN_THIS
    ba[2].should eq FILL_IN_THIS
  end
end
