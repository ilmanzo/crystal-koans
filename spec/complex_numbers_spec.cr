require "spec_helper"

# A complex number is a number represented in the form a + bi.
# In this form, a and b are real numbers, and i is an imaginary number such as i² = -1.
# The a is the real part of the number, and the b is the imaginary part of the number.

require "complex"

describe Student do
  it "can create complex numbers" do
    z = Complex.new(2, 1)         # => 2.0 + 1.0i
    z.to_s.should eq FILL_IN_THIS # string representation ?
  end

  it "can convert real numbers to complex" do
    z = -1.i
    z.to_s.should eq FILL_IN_THIS # string representation ?
  end

  it "can perform operations on complex numbers" do
    z1 = Complex.new(-5, 4)
    z2 = Complex.new(5, -5)
    z = (z1 + z2)
    (z*z).to_f.should eq FILL_IN_THIS
  end
end
