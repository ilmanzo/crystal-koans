require "spec_helper"

# Crystal provides basic methods to do type reflection, casting and introspection.

describe Student do
  # is_a determines whether an expression's runtime type inherits or includes another type
  it "knows the pseudo-method is_a?" do
    myarray = Array(Int32).new
    is_integer = myarray.is_a?(Int32 | String)
    is_integer.should eq FILL_IN_THIS
    is_enumerable = myarray.is_a? Enumerable
    is_enumerable.should eq FILL_IN_THIS
  end

  # nil? determines whether an expression's runtime type is Nil
  it "knows the pseudo-method nil?" do
    number = 44
    isnil = (number.nil?)
    isnil.should eq FILL_IN_THIS
  end

  # TODO
end
