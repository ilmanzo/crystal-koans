require "spec_helper"

# A method can receive a variable number of arguments by using a splat (*), which can appear only once and in any position

def mulby(n, *numbers)
  numbers.map { |i| n*i }
end

describe Student do
  it "can call method with variable number of parameters" do
    products = mulby(3, 10, 20, 30)
    products[2].should eq FILL_IN_THIS
  end

  it "can call method with splat parameters" do
    tuple = {3, 5, 7, 11} # need a Tuple, not an Array
    products = mulby(2, *tuple)
    products[3].should eq FILL_IN_THIS
  end

  # see also https://crystal-lang.org/reference/syntax_and_semantics/splats_and_tuples.html
end
