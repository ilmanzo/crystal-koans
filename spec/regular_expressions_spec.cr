require "./spec_helper"

describe Student do
  it "knows regular expressions" do
    (/hello/ =~ "hello world").should eq FILL_IN_THIS
  end

  it "returns match data" do
    /hello/.match("hello world").class.should eq FILL_IN_THIS
  end

  it "knows about regular expressions's groups" do
    /([a-z]+) ([a-z]+)/.match("hello world").try(&.[2]).should eq FILL_IN_THIS
  end

end
