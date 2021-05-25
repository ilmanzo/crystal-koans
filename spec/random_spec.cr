require "spec_helper"

# Random provides an interface for random values generation, 
# using a pseudo random number generator (PRNG).

# TODO: add more tests
describe Student do
  it "can generate random integers" do
    x = Random.rand(10) # module method
    r = Random.new      
    y = r.rand(10)      # instance method
    result = (x>=0 && x<11 && y>=0 && y<11)
    result.should eq FILL_IN_THIS
  end
end
