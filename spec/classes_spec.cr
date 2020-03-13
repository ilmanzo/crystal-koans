require "./spec_helper"

class FirstClass
end

class Dog1
  def set_name(a_name : String) # note we need to specify the type
    @name=a_name
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


describe Student do
  it "can create instances of classes" do
    instance=FirstClass.new
    instance.class.should eq FILL_IN_THIS
  end

  it "can assign and retrieve instance variables" do
    dog1=Dog1.new
    dog1.set_name "Fido"
    dog1.get_name.should eq FILL_IN_THIS   # accessing instance variables require always a method
  end

  it "knowns constructor and properties" do
    dog2=Dog2.new "Fido"
    dog2.name.should eq FILL_IN_THIS   # accessing instance variables require always a method
  end

end
