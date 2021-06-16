require "spec_helper"

# Annotations can be used to add metadata to certain features in the source code.
# Types, methods and instance variables may be annotated.

annotation StudentAnnotation
end

# utility function to extract the annotation value, if present
macro get_student_from_annotation
  {% if @def.annotation(StudentAnnotation) %} 
    {{ @def.annotation(StudentAnnotation)[:student_name] }}
  {% else %}
    "unknown"
  {% end %}
end

# this function is annotated
@[StudentAnnotation(name: "myself")]
def annotated_function
  get_student_from_annotation
end

# this function is not annotated
def not_annotated_function
  get_student_from_annotation
end

# TODO
describe Student do
  it "knows how to use annotations" do
    not_annotated_function.should eq FILL_IN_THIS
    annotated_function.should eq FILL_IN_THIS
  end
end
