require "spec_helper"

# An Iterator allows processing sequences lazily,
# as opposed to Enumerable which processes sequences eagerly
# and produces an Array in most of its methods.

# To implement an Iterator you need to define a #next method that must return the next element in the sequence or Iterator::Stop::INSTANCE, which signals the end of the sequence (you can invoke #stop inside an iterator as a shortcut).

class Fibonacci
  include Iterator(Int32)

  def initialize(@size : Int32)
    @a = 0
    @b = 1
    @produced = 0
  end

  def next
    @a += @b
    @a, @b = @b, @a
    if @produced < @size
      @produced += 1
      @a
    else
      stop
    end
  end
end

describe Student do
  it "knows how to implement Iterators" do
    fib = Fibonacci.new(6)
    sum = 0
    fib.each do |n| # values are generated lazily, minimum memory usage
      sum += n
    end
    sum.should eq FILL_IN_THIS
  end
end
