require "spec_helper"

# Generics allow you to parameterize a type based on other type.

# let's start by creating a special queue that does not allow duplicates in a row
# being generic, this class can store any type T

class NoDupQueue(T)
  def initialize
    @backing_array = Array(T).new
  end

  def push(value : T)
    return if @backing_array.size>0 && @backing_array[-1] == value
    @backing_array.push value 
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
    q = NoDupQueue(Int32).new
    q.size.should eq FILL_IN_THIS
    q.push(3)
    q.push(4)
    q.push(3)
    q.size.should eq FILL_IN_THIS
    q.pop.should eq FILL_IN_THIS
    q.pop.should eq FILL_IN_THIS
  end
  it "can create and use generic types" do
    q = NoDupQueue(String).new
    q.push("foo")
    q.push("hello")
    q.push("hello")
    q.size.should eq FILL_IN_THIS
    q.push("bar")
    q.push("hello")
    q.pop.should eq FILL_IN_THIS
    q.pop.should eq FILL_IN_THIS
  end
end
