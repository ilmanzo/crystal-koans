require "spec_helper"

lib C
  fun cos(value : Float64) : Float64
  fun getlogin : LibC::Char* # crystal LibC defines some common alias types
end

describe Student do
  it "can call C functions" do
    C.cos(0).should eq FILL_IN_THIS
  end

  it "can convert C strings" do
    # creates a crystal String from a Pointer(UInt8)
    # Note: The C char type is UInt8 in Crystal, so a char* or a const char* is UInt8*.
    # The Char type in Crystal is a unicode codepoint so it is represented by four bytes,
    # making it similar to an Int32, not to an UInt8.
    user = String.new(C.getlogin)
    user.should eq FILL_IN_THIS
  end
end
