TESTS = %w(
  booleans
  numbers
  strings
  symbols
  nil
  regular_expressions
  enums
  sets
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
  exceptions
  require_path
  magic_constants
  concurrency
  macros
  macro_hooks
  c_interop
  low_level_primitives
)

TESTS.each_with_index(1) do |test_case, test_number|
  puts "Level #{test_number}: testing your strength on #{test_case} ..."
  spec_process = Process.run("crystal spec spec/#{test_case}_spec.cr", shell: true, error: STDERR, output: STDOUT)
  unless spec_process.success?
    puts "The Master says: "
    puts "Something is wrong. Please meditate on #{test_case} topic "
    puts "and try to follow the path to Enlightenment"
    exit 1
  end
end
