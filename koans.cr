require "colorize"

TESTS = %w(
  booleans
  numbers
  strings
  symbols
  nil
  regular_expressions
  enums
  arrays
  tuples
  named_tuples
  sets
  hashes
  ranges
  loops
  blocks
  functions
  splat
  structs
  classes
  chaining_methods
  generics
  exceptions
  require_path
  magic_constants
  concurrency
  macros
  macro_hooks
  c_interop
  low_level_primitives
  bitarray
  bigint
  complex_numbers
  dir
  html
  json
  csv
)

PASSED_FILE = ".passed"
passed = [] of String

if File.exists?(PASSED_FILE)
  passed = File.read_lines(PASSED_FILE)
else
  File.touch(PASSED_FILE)
end

TESTS.each_with_index(1) do |test_case, test_number|
  next if passed.includes?(test_case)

  puts "Level #{test_number}: testing your strength on #{test_case} ..."
  spec_process = Process.run("crystal spec spec/#{test_case}_spec.cr", shell: true, error: STDERR, output: STDOUT)
  if spec_process.success?
    File.open(PASSED_FILE, "a", &.puts(test_case))
  else
    test_case_bold = test_case.colorize(:green).mode(:bold)
    print "--- \u{1F9D9} The Master says: ---\n".colorize(:yellow)
    print "\"Something is wrong. Please meditate on ".colorize(:green)
    print test_case_bold, " topic\nand try to follow the path to Enlightenment \u{1F9D8}\"\n".colorize(:green)
    exit 1
  end
end
