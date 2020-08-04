require "spec_helper"

# Special macros exist that are invoked in some situations as hooks, at compile time:
# https://crystal-lang.org/reference/syntax_and_semantics/macros/hooks.html

class Dog
  # inherited is invoked when a subclass is defined. @type is the inheriting type.
  macro inherited
    def get_subclass
      "I am a {{@type.name.id}} but also a Dog"
    end
  end

  # method_missing is invoked when a method is not found.
  macro method_missing(call)
    def {{call}}
      "nice try"
    end
  end
end

class Corgi < Dog
end

describe Student do
  it "knows inherited macro" do
    charlie = Corgi.new
    charlie.get_subclass.should eq FILL_IN_THIS
  end

  it "knows method_missing macro" do
    charlie = Corgi.new
    charlie.fetch_my_slippers.should eq FILL_IN_THIS
  end
end
