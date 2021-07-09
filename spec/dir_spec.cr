require "spec_helper"

# Objects of class Dir are directory streams representing directories in the underlying file system.
# They provide a variety of ways to list directories and their contents.
# Please note that iterating over the directory stream would reach eventually to the end of the stream.
# further calls to the stream would yield empty lists/arrays.
# Please see: https://github.com/crystal-lang/crystal/issues/8504

# TODO add more tests
describe Student do
  it "can enumerate directory content" do
    d = Dir.new("spec")
    d.children.size.should eq FILL_IN_THIS
    d.entries.size.should eq FILL_IN_THIS # surprised ?
    d.rewind
    d.entries.size.should eq FILL_IN_THIS # what's the difference ?
  end

  it "can test for directory existence" do
    Dir.exists?("spec").should eq FILL_IN_THIS
  end

  it "can test if directory is empty" do
    Dir.empty?("spec").should eq FILL_IN_THIS
  end

  it "can test if directory is empty" do
    Dir.empty?("spec").should eq FILL_IN_THIS
  end

  it "knows that testing for nonexitent directory raises an error" do
    begin
      Dir.empty?("/tmp/foo")
    rescue e : Exception
      puts "nonexistent: #{e.message}"
    end
  end

  it "knows how to mkdir and delete them" do
    path = Path.new("/tmp/foo")
    Dir.mkdir(path, 0o700)
    Dir.exists?(path).should eq FILL_IN_THIS
    Dir.delete(path)
    Dir.exists?(path).should eq FILL_IN_THIS
  end
end
