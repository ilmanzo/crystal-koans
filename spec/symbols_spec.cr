require "./spec_helper"

#A symbol is a constant that is identified by a name without you having to give it a numeric value.
describe Student do
  it "knows symbols are comparable" do
    sym1= :a_symbol
    sym2= sym1
    sym2.should eq FILL_IN_THIS
  end

  it "knows symbols can be converted" do
    sym= :potatoes
    #sym.to_s.should eq FILL_IN_THIS
    sym.inspect.should eq FILL_IN_THIS #why ?
    sym.to_i.should eq FILL_IN_THIS #this can be a surprise
  end


end
