require "./spec_helper"

# Crystal compiler defines some "magical" predefined constants:
# https://crystal-lang.org/reference/syntax_and_semantics/constants.html

describe Student do
  # you can get the path and name of the current file
  # so for example you can reference config files or static assets
  it "knows about __FILE__" do
    __FILE__[-2..-1].should eq FILL_IN_THIS
  end

  it "knows about __DIR__" do
    __DIR__.split('/').size.should eq FILL_IN_THIS
  end

  # next ones are useful for logging and debugging
  it "knows about __LINE__" do
    __LINE__.should eq FILL_IN_THIS
  end
  # __END_LINE__ is the line number of the end of the calling block. 
  # Can only be used as a default value to a method parameter.

  it "knows about __END_LINE__" do 
      first_line=__LINE__
      #Currently at line number: #{__LINE__}
      measure_function_length(first_line).should eq FILL_IN_THIS
  end

end

# When __LINE__ is declared as the default value to a method parameter, 
# it represents the line number at the location of the method call.

def measure_function_length(caller_line= __LINE__, end_of_caller = __END_LINE__)
  end_of_caller-caller_line
end
