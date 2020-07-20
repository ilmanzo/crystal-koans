require "./spec_helper"

class Point
  def initialize(@x, @y)
  end
end

class Customer
  getter zipCode : Int32

  def initialize(@name : String, @zipCode : Int32, @email : String)
  end

  def zipcode_ptr
    pointerof(@zipCode)
  end
end

describe Student do
  # Some low-level primitives are provided. They are mostly useful for interfacing with C libraries and for low-level code.

  # The sizeof expression returns an Int32 with the size in bytes of a given type
  it "knows sizeof" do
    sizeof(Int32).should eq FILL_IN_THIS
    sizeof(Int64).should eq FILL_IN_THIS
    # For Reference types, the size is the same as the size of a pointer.
    # This is because a Reference's memory is allocated on the heap and a pointer to it is passed around.
    # To get the effective size of a class, use instance_sizeof.
    sizeof(String).should eq FILL_IN_THIS
  end

  # The instance_sizeof expression returns an Int32 with the instance size of a given class
  # the size is not simply the sum of the fields, because Crystal also stores the type ID of the object.
  # also the size of other classes may not be what you expect
  it "knows instance_sizeof" do
    instance_sizeof(Point).should eq FILL_IN_THIS
    instance_sizeof(String).should eq FILL_IN_THIS
  end

  # An offsetof expression returns the byte offset of an instance variable in a struct or class type.
  # It accepts the type as first argument and the instance variable name prefixed by an @ as second argument
  it "knows offsetof" do
    c = Customer.new("Name Surname", 30131, "email@example.com")
    offsetof(Customer, @email).should eq FILL_IN_THIS
  end

  # Crystal allows declaring uninitialized variables
  it "knows uninitialized" do
    x = uninitialized Int32 # some random value, garbage, unreliable
    x.should_not eq FILL_IN_THIS
  end

  # The pointerof expression returns a Pointer that points to the contents of a variable or instance variable
  # This is the only unsafe type in Crystal. If you are using a pointer, you are writing unsafe code
  # because a pointer doesn't know where it's pointing to nor how much memory starting from it is valid.
  # However, pointers make it possible to interface with C and to implement efficient data structures.
  # For example, both Array and Hash are implemented using pointers.
  it "knows pointerof" do
    c = Customer.new "Name Surname", 30131, "email@example.com"
    ptr = c.zipcode_ptr
    ptr.value.should eq FILL_IN_THIS
    ptr.value = 37100 # customer has changed address, let's change zipCode via pointer
    c.zipCode.should eq FILL_IN_THIS
  end
end
