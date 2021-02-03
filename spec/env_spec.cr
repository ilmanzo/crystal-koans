require "spec_helper"

# ENV is a hash-like accessor for environment variables.

KEY = "CRYSTAL_KOANS"

describe Student do
  it "can read environment variables" do
    ENV["HOME"].should eq FILL_IN_THIS
  end

  it "can set environment variables" do
    ENV[KEY] = "I am on the way of enlightenment"
    ENV.has_key?(KEY).should eq FILL_IN_THIS
  end

  it "can enumerate variables" do
    counter = 0
    ENV.each do |key, value|
      p key, value if key.includes? "PATH"
      counter += 1 if key.includes?("PATH") && /\/.+\//.match value
    end
    counter.should eq FILL_IN_THIS
  end
end
