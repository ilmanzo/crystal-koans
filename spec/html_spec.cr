require "spec_helper"

# module HTML Provides HTML escaping and unescaping methods.
# For HTML parsing see module XML

require "html"

describe Student do
  it "can escape HTML entities" do
    HTML.escape("<Crystal> & <You>").should eq FILL_IN_THIS
  end
  it "can unescape HTML entities" do
    HTML.unescape("&lt;&amp;&gt").should eq FILL_IN_THIS 
  end

end
