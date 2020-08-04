# this is necessary boilerplate for our test suite, please ignore it for now
require "spec_helper"

# while you are becoming more proficient in Crystal, it's important to learn how to split your program
# in many files and how you can manage them.

# require accepts a single argument: a string literal, and it can come in many flavors.
# Once a file is required, the compiler remembers its absolute path and later requires of that same file will be ignored.

# while doing these exercise, please open the lib folder and have a look where the constants are defined.

# 1.
require "simplelib"
# 2.
require "mynestedlib"
# 3.
require "mynestedlib/otherlib"
# 4.
require "mysrclib"

describe Student do
  it "knows simple require" do
    # 1. a simple require "filename" looks up filename.cr in the require path
    # By default the require path is the location of the standard library that comes with the compiler,
    # and the "lib" directory relative to the current working directory
    SIMPLELIB_CONST.should eq FILL_IN_THIS
  end

  it "knows implicit nesting require" do
    # 2. if you have filename/filename.cr you can simply require "filename"
    NESTEDLIB_CONST1.should eq FILL_IN_THIS
  end

  it "knows explicit nesting require" do
    # 3. you can always explicit the subfolder of the file to require

    NESTEDLIB_CONST2.should eq FILL_IN_THIS
  end

  it "knows src require" do
    # 4. if you require "filename" crystal looks also in filename/src/filename.cr or filename/src/filename/filename.cr
    MYSRCLIB_CONST.should eq FILL_IN_THIS
  end
end
