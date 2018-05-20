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
  end

  it "knows each loops" do
  end

end
