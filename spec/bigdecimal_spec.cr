require "spec_helper"

# A BigDecimal can represent arbitrarily large precision decimals.

# It is internally represented by a pair of BigInt and UInt64: value and scale. Value contains the actual value, and scale tells the decimal point place. E.g. when value is 1234 and scale 2, the result is 12.34.

require "big"

describe Student do
  it "can create a BigDecimal from other types" do
    n1 = BigDecimal.new "123.456"
    n2 = BigDecimal.new 123456, 3
    n3 = BigDecimal.new 123.456
    equal = (n1 == n2 && n2 == n3)
    equal.should eq FILL_IN_THIS
  end

  it "can do operations on BigDecimals" do
    fpyear = 1.01 ** 365 # The 0.99 vs 1.01 Rule
    bdyear = BigDecimal.new(1.01) ** 365
    fpyear.to_s.size.should eq FILL_IN_THIS
    bdyear.to_s.size.should eq FILL_IN_THIS
  end

  it "can retrieve value and scale" do
    number = BigDecimal.new 3.14
    number.value.should eq FILL_IN_THIS
    number.scale.should eq FILL_IN_THIS
  end

  it "can scale a number to another" do
    n1 = BigDecimal.new 12.34
    n2 = BigDecimal.new 1000
    n1.scale_to(n2).should eq FILL_IN_THIS
  end

  it "can round a BigDecimal" do
    number = BigDecimal.new 33.55
    number.floor.should eq FILL_IN_THIS
    number.ceil.should eq FILL_IN_THIS
  end

  # TODO: other operations ?
end
