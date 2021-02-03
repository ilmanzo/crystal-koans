require "spec_helper"

# Embedded Crystal (ECR) is a template language for embedding Crystal code
# into other text, that includes but is not limited to HTML.
# The template is read and transformed at compile time and then
# embedded into the binary.

require "ecr"

class Greeter
  def initialize(@name : String)
  end

  ECR.def_to_s "assets/ecr/greetings.ecr"
end

describe Student do
  it "can render basic templates" do
    foo = 3
    bar = 5
    result = ECR.render "assets/ecr/basic.ecr"
    result.should eq FILL_IN_THIS
  end

  it "can render templates with comments and tags" do
    foo = 3
    result = ECR.render "assets/ecr/comments_and_tags.ecr"
    result.should eq FILL_IN_THIS
  end

  it "can render templates with loops" do
    fruits = %w(apple banana orange)
    result = ECR.render "assets/ecr/loops.ecr"
    result.should eq FILL_IN_THIS #
  end

  it "can render templates with class data" do
    greet = Greeter.new("John").to_s # the to_s method is generated from ECR
    greet.should eq FILL_IN_THIS
  end
end
