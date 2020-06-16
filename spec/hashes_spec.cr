require "./spec_helper"

describe Student do
  it "can create empty hashes" do
    # NOTE: in Crystal we need types for empty hashes since it cannot be inferred
    # if you come from ruby, see http://www.crystalforrubyists.com/
    empty_hash = Hash(String, Int32).new
    empty_hash.size.should eq FILL_IN_THIS
    other_empty = {} of String => Int32 # another notation: key => value
    empty_hash.should eq FILL_IN_THIS
  end

  it "knows hash literals" do
    hash = {:one => "uno", :two => "dos"}
    hash.size.should eq FILL_IN_THIS
  end

  it "can access hashes" do
    hash = {:one => "uno", :two => "dos"}
    hash[:one].should eq FILL_IN_THIS
    # after solving the above, try removing the comment ....
    # hash[:three].should eq FILL_IN_THIS
  end

  it "can modify hashes" do
    hash = {:one => "uno", :two => "dos"}
    hash[:one] = "eins"
    hash[:one].should eq FILL_IN_THIS
    hash[:three] = "tres"
    hash.size.should eq FILL_IN_THIS
  end

  it "can access hash key and values" do
    hash = {:one => "uno", :two => "dos"}
    hash.keys.size.should eq FILL_IN_THIS
    hash.values.includes?("uno").should eq FILL_IN_THIS
  end
end
