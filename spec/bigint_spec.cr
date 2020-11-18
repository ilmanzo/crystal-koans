require "spec_helper"

# A BigInt can represent arbitrarily large integers.
# It is implemented under the hood with GMP (https://gmplib.org/)

# unlike Ruby, Crystal does not switch from one number type to another automatically.

require "big"

describe Student do
  it "know how to inizialize big integers" do
    n = BigInt.new(12345)
    n.should eq FILL_IN_THIS
  end

  it "know how to inizialize big integers in different bases" do
    n = BigInt.new("BADC0FFE_BADC0FFE", base = 16)
    n.should eq FILL_IN_THIS
  end

  it "knows all operators are available" do
    a = BigInt.new(123456789)
    b = a**2
    b.should eq FILL_IN_THIS
  end
end
