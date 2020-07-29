require "./spec_helper"

# a simple introduction to Crystal concurrency
# for more details please take a look at
# https://crystal-lang.org/reference/guides/concurrency.html

describe Student do
  # To achieve concurrency, Crystal has fibers.
  # A fiber is in a way similar to an operating system thread except that it's much more lightweight
  # and its execution is managed internally by the process. So, a program will spawn multiple fibers
  # and Crystal will make sure to execute them when the time is right.

  it "knows fibers" do
    io_buf = IO::Memory.new

    spawn do
      3.times do
        io_buf << "PING"
        Fiber.yield # let the runtime schedule other fibers
      end
    end

    spawn do
      3.times do
        io_buf << "PONG"
        Fiber.yield
      end
    end

    3.times do
      Fiber.yield
    end
    io_buf.rewind
    io_buf.gets_to_end.should eq FILL_IN_THIS
  end

  #
  # Crystal has Channels inspired by CSP (https://en.wikipedia.org/wiki/Communicating_sequential_processes)
  # They allow communicating data between fibers without sharing memory
  # and without having to worry about locks, semaphores or other special structures.
  #
  it "knows channels" do
    ch = Channel(String).new # capacity = 0, so this is unbuffered

    # consumer
    spawn do
      buf = String::Builder.new
      step = 1
      loop do
        value = ch.receive # blocks when channel is empty
        break if value == "END"
        buf << step.to_s << value
        step += 1
      end
      ch.send buf.to_s
    end
    # every send will schedule the execution of the blocked fiber
    ch.send "PING"
    ch.send "PONG"
    ch.send "END"
    result = ch.receive

    result.should eq FILL_IN_THIS
  end
end
