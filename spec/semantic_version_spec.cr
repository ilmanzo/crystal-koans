require "spec_helper"

require "semantic_version"

# Conforms to Semantic Versioning 2.0.0
# See https://semver.org/ for more information.

describe Student do
  it "knows how to build SemVer objects" do
    semver1 = SemanticVersion.new(1, 0, 0)
    semver2 = SemanticVersion.parse("2.0.0")
    semver1.major.should eq FILL_IN_THIS
    semver2.minor.should eq FILL_IN_THIS
  end

  it "knows how to compare SemVer objects" do
    semver1 = SemanticVersion.new(1, 2, 9)
    semver2 = SemanticVersion.parse("1.10.0")
    result = semver1 > semver2 ? "higher" : "lower"
    result.should eq FILL_IN_THIS
  end
end
