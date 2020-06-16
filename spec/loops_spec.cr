require "./spec_helper"

describe Student do
  it "knows while loops" do
    i = 0
    result = [] of Int32

    while i < 10
      i += 1
      next if (i % 2) == 0
      result << i
    end

    result.should eq FILL_IN_THIS
  end

  it "knows times loops" do
    sum = 0

    10.times do
      sum += 1
    end

    sum.should eq FILL_IN_THIS
  end

  it "knows until loops" do
    n = 42
    steps = 0

    until n == 4 # https://en.wikipedia.org/wiki/Collatz_conjecture
      n = n / 2 if n % 2 == 0
      n = n * 3 + 1 if n % 2 == 1
      steps += 1
    end

    steps.should eq FILL_IN_THIS
  end

  it "knows each loops" do
    [2, 4, 6, 8].each do |n|
      (n % 2).should eq FILL_IN_THIS
    end
  end
end
