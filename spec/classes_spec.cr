require "./spec_helper"

class FirstClass
end


describe Student do
  it "can create instances of classes" do
    instance=FirstClass.new
    instance.class.should eq FILL_IN_THIS
  end

end
