require "./spec_helper"

class FirstClass
end

class Dog1
  def set_name(a_name)
    @name=a_name
  end

  def get_name
    @name
  end
end


describe Student do
  it "can create instances of classes" do
    instance=FirstClass.new
    instance.class.should eq FILL_IN_THIS
  end

  it "can assign and retrieve instance variables" do
    dog=Dog.new("Fido")
    dog.name.should eq FILL_IN_THIS   # accessing instance variables require always a method
  end

end
