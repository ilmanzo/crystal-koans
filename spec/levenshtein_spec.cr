require "spec_helper"

# the Levenshtein distance is a string metric for measuring the difference between two sequences. https://en.wikipedia.org/wiki/Levenshtein_distance

require "levenshtein"

describe Student do
  it "can calculate distance between two words" do
    Levenshtein.distance("hello", "hallo").should eq FILL_IN_THIS
  end

  it "can find the best match for a given name among many choices" do
    best_match = Levenshtein.find("hello", ["hullo", "hel", "hall", "hell"])
    best_match.should eq FILL_IN_THIS
  end

  it "can find the best match for a given name among many choices in a block" do
    best_match = Levenshtein.find("hello", 2) do |l| # 2nd parameter is tolerance
      l.test "hulk"
      l.test "holk"
      l.test "halka"
      l.test "ello"
    end
    best_match.should eq FILL_IN_THIS
  end
end
