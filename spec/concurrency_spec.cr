require "./spec_helper"

# a simple introduction to Crystal concurrency
# for more detail please take a look at
# https://crystal-lang.org/reference/guides/concurrency.html

describe Student do

  # To achieve concurrency, Crystal has fibers. 
  # A fiber is in a way similar to an operating system thread except that it's much more lightweight 
  # and its execution is managed internally by the process. So, a program will spawn multiple fibers 
  # and Crystal will make sure to execute them when the time is right.

  it "knows fibers" do
    buf_io = IO::Memory.new

    spawn do
      3.times do
        buf_io << "PING"
        Fiber.yield # let the runtime schedule other fibers
      end
    end

    spawn do
      3.times do
        buf_io << "PONG"
        Fiber.yield
      end
    end

    3.times do
      Fiber.yield
    end
    buf_io.rewind
    buf_io.gets_to_end.should eq FILL_IN_THIS
  end

  #
  # Crystal has Channels inspired by CSP (https://en.wikipedia.org/wiki/Communicating_sequential_processes)
  # They allow communicating data between fibers without sharing memory 
  # and without having to worry about locks, semaphores or other special structures.
  #
  it "knows channels" do
  end
end
