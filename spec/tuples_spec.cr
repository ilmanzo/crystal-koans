require "./spec_helper"

describe Student do
  it "can create simple tuples" do
    t = {1, "foo"}
    t[0].should eq FILL_IN_THIS
  end

  it "can create named tuples" do
    nt = {number: 1, text: "foo"}
    nt[:text].should eq FILL_IN_THIS
  end

  it "knows tuples are immutable" do
    t = {1, "foo"}
    # t[0] = 10   # compilation error
  end

  it "knows the 'or equal' assignment shortcut" do
    h = {1 => 'A'}
    h[3] ||= 'C'
    h[3].should eq FILL_IN_THIS
  end
end
