require "spec_helper"

# The Enumerable mixin provides collection classes with several traversal, searching, filtering and querying methods.

# knowing these functions can boost up your programming productivity and help you to create concise, clear code

describe Student do
  it "knows Enumerable method all?" do
    a = [33, 63, 90, 15, 81, 21, 42, 27]
    mult3 = a.all? { |i| i % 3 == 0 }
    mult3.should eq FILL_IN_THIS
  end

  it "knows Enumerable method any?" do
    a = [33, 63, 90, 15, 81, 21, 42, 27]
    mult5 = a.any? { |i| i % 5 == 0 }
    mult5.should eq FILL_IN_THIS
  end

  # Returns the first element in the collection for which the passed block is true.
  it "knows Enumerable method find" do
    a = [6, 4, 10, 52, 2, 25, 5, 4, 0]
    n = a.find { |i| i*i == i + i }
    n.should eq FILL_IN_THIS
  end

  # Returns the number of elements in the collection for which the passed block returns true.
  it "knows Enumerable method count" do
    a = [6, 4, 10, 52, 68, 40, 4, 17, 2, 25, 5, 4, 0]
    a.count(4).should eq FILL_IN_THIS
  end

  # Returns an hash with the items in the array and the frequency they appear
  it "knows Enumerable method tally" do
    t = [1, 0, 1, 0, 1, 1, 1, 1, 0, 0, 0, 1, 1, 0, 0, 1, 1, 0, 1, 1, 0, 0, 0, 1, 1, 0].tally
    t[0].should eq FILL_IN_THIS
    t[1].should eq FILL_IN_THIS
  end

  # new in 1.4.0 : find! and index! raise Enumerable::NotFoundError
  it "knows raising find" do
    expect_raises(FILL_IN_THIS_EXCEPTION) do
      [1, 2, 3].find! { |x| x > 4 }
    end
  end
end
