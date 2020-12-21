require "spec_helper"

# The YAML module provides serialization and deserialization
# of YAML version 1.1 to/from native Crystal data structures,
# with the additional independent types specified in http://yaml.org/type/

require "yaml"

# TODO

describe Student do
  it "can parse YAML structure" do
    data = YAML.parse <<-END
         ---
         foo:
           bar:
             baz:
               - qux
               - fox
         END

    data["foo"]["bar"]["baz"][1].as_s.should eq FILL_IN_THIS
  end

  it "can generate YAML from data structures" do
    yaml = {hello: "world"}.to_yaml
    yaml.should eq FILL_IN_THIS
  end
end
