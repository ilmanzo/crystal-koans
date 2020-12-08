require "watch"
require "process"

Watch.watch "./spec/**/*.cr", "crystal run koans.cr"

Process.run "crystal run koans.cr", shell: true, error: STDERR, output: STDOUT

puts "Starting watcher, will run the tests when any file is saved."
puts "Press CTRL-C to stop this watcher"

Watch.run
