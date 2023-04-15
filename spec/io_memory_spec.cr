require "spec_helper"

# An IO that reads and writes from a buffer in memory.
# The internal buffer can be resizeable and/or writeable depending on how an IO::Memory is constructed.

describe Student do
  it "can create a new memory buffer" do
    buf = IO::Memory.new(capacity: 256)
    buf.size.should eq FILL_IN_THIS
  end

  it "can read and write data to a memory buffer" do
    buf = IO::Memory.new
    buf.write_string "This is the content".to_slice
    buf.pos = 8
    slice = Bytes.new(3)
    buf.read(slice)
    String.new(slice).should eq FILL_IN_THIS
  end
end
