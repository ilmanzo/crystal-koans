require "spec_helper"

macro assign_variable(name, value)
  {% begin %}
  {{name}} = {{value}}
  {% end %}
end

macro define_functions
  {% for number in ["one", "two", "three"] %}
    def func_{{number.id}}
      return "I am function number #{ {{number}} }"
    end
  {% end %}
end

macro define_class(class_name, method, content)
  class {{class_name}}
    def initialize(@name : String)
    end

    def {{method}}
      {{content}} + @name
    end
  end
end

define_functions
define_class Foo, bar, "hello, "

describe Student do
  it "knows macro can create functions at compile time" do
    result = func_two
    result.should eq FILL_IN_THIS
  end

  it "knows macro can create classes at compile time" do
    a = Foo.new("myclass") # this class is created by a macro
    b = a.bar
    b.should eq FILL_IN_THIS
  end
end
