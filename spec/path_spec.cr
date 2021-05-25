require "spec_helper"

# A Path represents a filesystem path and allows 
# path-handling operations such as querying its components 
# as well as semantic manipulations.

# TODO add more tests
describe Student do
  it "understands Paths are made of components" do
    p=Path.new("/","foo", "bar", "baz.cr")
    p.to_s.should eq FILL_IN_THIS
    p.parts[1].should eq FILL_IN_THIS
  end

  it "can extract informations from a path" do
    cwd = Dir.current
    p=Path.new cwd
    p.dirname.should eq FILL_IN_THIS
    p.basename.should eq FILL_IN_THIS
  end

  it "can normalize paths" do 
    p=Path.new("/","var","lib","..","log","..","..")
    p.normalize.to_s.should eq FILL_IN_THIS
  end
end
