require "spec_helper"

describe Student do
  it "can create instances of classes" do
    instance = FirstClass.new
    instance.class.should eq FILL_IN_THIS
  end

  it "can assign and retrieve instance variables" do
    dog1 = Dog1.new
    dog1.set_name "Fido"
    # accessing instance variables require always a method
    dog1.get_name.should eq FILL_IN_THIS
  end

  it "knowns constructor and properties" do
    dog2 = Dog2.new "Fido"
    # accessing instance variables require always a method
    dog2.name.should eq FILL_IN_THIS
  end

  it "knows class methods" do
    Dog3.kind.should eq FILL_IN_THIS # class methods can be called without creating an instance
  end

  it "knows class variables" do
    Dog4.kind.should eq FILL_IN_THIS # methods are inherited
    charlie = Dog4.new
    charlie.furColor.should eq FILL_IN_THIS
    molly = Dog4.new
    molly.furColor.should eq FILL_IN_THIS
  end
end

class FirstClass
end

class Dog1
  def set_name(a_name : String) # note we need to specify the type
    @name = a_name
  end

  def get_name
    @name
  end
end

class Dog2
  property name : String

  def initialize(@name) # shorthand syntax
  end
end

class Dog3
  def self.kind # class method
    "a Dog"
  end
end

class Dog4 < Dog3  # inheritance
  @@puppyCount = 0 # class field

  def initialize
    @@puppyCount += 1
  end

  def furColor # instance method
    @@puppyCount > 1 ? "brown" : "black"
  end
end
