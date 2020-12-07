require "spec_helper"

# The JSON module allows parsing and generating JSON documents.

require "json"

describe Student do
  it "knows type-safe JSON serialization for standard types" do
    [1, 2, 3].to_json.should eq FILL_IN_THIS
    myhash = {"x" => 100, "y" => 50}
    myhash.to_json.size.should eq FILL_IN_THIS
  end

  it "knows type-safe JSON serialization for standard types" do
    myhash = {"x" => 100, "y" => 50}
    myhash.to_json.size.should eq FILL_IN_THIS
  end

  it "knows type-safe JSON de-serialization for standard types" do
    json_text = %(["foo", "bar", "baz"])
    arr = Array(String).from_json(json_text)
    arr[2].should eq FILL_IN_THIS
  end

  it "knows type-safe JSON de-serialization for standard types" do
    json_text = %(["one", 2, "three"])
    arr = Array(String | Int32).from_json(json_text)
    arr[1].should eq FILL_IN_THIS
  end
end
