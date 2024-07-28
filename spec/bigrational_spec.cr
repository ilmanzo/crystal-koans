require "spec_helper"

# Rational numbers are represented as the quotient of arbitrarily large numerators and denominators. 
# Rationals are canonicalized such that the denominator and the numerator have no common factors, 
# and that the denominator is positive. Zero has the unique representation 0/1.

# as BigInt, It is implemented under the hood with GMP.

require "big"

describe Student do
  it "know how to inizialize big rationals" do
    n = BigRational.new(3.to_big_i, 7.to_big_i)
    n.to_s.should eq FILL_IN_THIS
  end

  it "know big rationals are automatically canocalized" do
    n = BigRational.new(3, -9)
    n.to_s.should eq FILL_IN_THIS
  end

  it "knows all operators are available" do
    a = BigRational.new(2,4)
    b = a**2
    b.to_s.should eq FILL_IN_THIS
  end
end
