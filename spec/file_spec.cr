require "spec_helper"

# A File instance represents a file entry in the local file system and allows using it as an IO.

describe Student do
  it "knows how to create tempfiles" do
    tempfile = File.tempfile("koanstemp")
    File.exists?(tempfile.path).should eq FILL_IN_THIS
    File.size(tempfile.path).should eq FILL_IN_THIS
  end
end
