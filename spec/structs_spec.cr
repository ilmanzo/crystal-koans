require "./spec_helper"

struct Point
  property x, y

  def initialize(@x : Int32, @y : Int32)
  end
end

def update_point(p : Point)
  p.x += 5
  p.y += 5
end

describe Student do
  # Instead of defining a type with class you can do so with struct

  # Invoking new on a struct allocates it on the stack instead of the heap
  it "knows how to create structs" do
    origin = Point.new(0, 0)
    origin.x.should eq FILL_IN_THIS
    origin.y.should eq FILL_IN_THIS
  end

  # A struct is passed by value while a class is passed by reference
  it "knows how to pass struct" do
    p = Point.new(3, 4)
    update_point(p)
    p.x.should eq FILL_IN_THIS
    p.y.should eq FILL_IN_THIS
  end

  # A struct can also include modules and can be generic, just like a class.

  # A struct is mostly used for performance reasons
  # to avoid lots of small memory allocations when passing small
  # copies might be more efficient.

end
