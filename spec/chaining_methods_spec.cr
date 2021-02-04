require "spec_helper"

# a fancy example of method chaining to achieve a result

describe Student do
  it "knows chaining methods" do
    result = (1..10).to_a                  # => [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
      .sort { |n, m| m <=> n }             # => [10, 9, 8, 7, 6, 5, 4, 3, 2, 1]
      .reject { |n| n.odd? }               # => [10, 8, 6, 4, 2]
      .map { |n| n * n }                   # => [100, 64, 36, 16, 4]
      .select { |n| n % 8 == 0 }           # => [64, 16]
      #.tap { |arr| puts "#{arr.inspect}" } # => [64, 16]
      .sort!                               # => [16, 64]
      .any? { |num| num > 50 }             # => true
    result.should eq FILL_IN_THIS
  end
end
