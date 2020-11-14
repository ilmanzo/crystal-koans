require "spec_helper"

# Generics allow you to parameterize a type based on other type.

# let's start by creating a special queue that does not store duplicates
# being generic, this class can store any type T

class MyQueue(T)
  def initialize
    @backing_array = Array(T).new
  end

  def push(value : T)
    @backing_array.push value unless @backing_array.includes? value
  end

  def pop
    @backing_array.pop
  end

  def size
    @backing_array.size
  end
end

describe Student do
  it "can create and use generic types" do
    q = MyQueue(Int32).new
    q.size.should eq FILL_IN_THIS
    q.push(3)
    q.push(4)
    q.push(3)
    q.size.should eq FILL_IN_THIS
    q.pop.should eq FILL_IN_THIS
    q.pop.should eq FILL_IN_THIS
  end
end
