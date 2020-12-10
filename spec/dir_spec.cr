require "spec_helper"

# Objects of class Dir are directory streams representing directories in the underlying file system. 
# They provide a variety of ways to list directories and their contents.

# TODO add more tests
describe Student do
  it "can enumerate directory content" do
    d=Dir.new("spec")
    d.children.size.should eq FILL_IN_THIS
    d.entries.size.should eq FILL_IN_THIS   # whats' the difference ?
  end
end
