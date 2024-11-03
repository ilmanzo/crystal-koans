require "spec_helper"

# A Deque ("double-ended queue") is a collection of objects of type T that behaves much like an Array.
# Deque has a subset of Array's API. It performs better than an Array when there are frequent insertions or deletions of items near the beginning or the end.
# The most typical use case of a Deque is a queue: use #push to add items to the end of the queue and #shift to get and remove the item at the beginning of the queue.
# This Deque is implemented with a dynamic array used as a circular buffer.

describe Student do

    it "can create a new deque" do
        dq = Deque.new(3, 'a') # => Deque{'a', 'a', 'a'}
        dq.to_s.should eq FILL_IN_THIS
    end

    it "can insert and extract elements in a queue" do
        dq = Deque.new(["This","is a","test"])
        dq << "once"
        dq << "more"
        dq.shift.should eq FILL_IN_THIS
    end
  
end
  