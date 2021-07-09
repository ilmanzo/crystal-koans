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
  iterators
  generics
  exceptions
  require_path
  magic_constants
  concurrency
  macros
  macro_hooks
  annotations
  type_reflection
  c_interop
  low_level_primitives
  bitarray
  bigint
  bigdecimal
  complex_numbers
  random
  levenshtein
  env
  dir
  path
  html
  json_plain
  json_custom
  csv
  xml
  yaml
  http_server
  ecr
)

CACHE_DIR = ".cache"
Dir.mkdir_p(CACHE_DIR)

PASSED_FILE = File.join(CACHE_DIR, "passed")
passed = {} of String => Int64

if File.exists?(PASSED_FILE)
  File.each_line(PASSED_FILE) do |line|
    test_case, timestamp = line.split
    passed[test_case] = timestamp.to_i64
  end
else
  File.touch(PASSED_FILE)
end

TESTS.each_with_index(1) do |test_case, test_number|
  if timestamp = passed[test_case]?
    mtime = File.info("spec/#{test_case}_spec.cr").modification_time.to_unix
    next if timestamp > mtime
  end

  puts "Level #{test_number}: testing your strength on #{test_case} ..."
  spec_process = Process.run("crystal spec spec/#{test_case}_spec.cr --fail-fast", shell: true, error: STDERR, output: STDOUT)
  if spec_process.success?
    File.open(PASSED_FILE, "a") do |file|
      file.puts "#{test_case} #{Time.local.to_unix}"
    end
  else
    test_case_bold = test_case.colorize(:green).mode(:bold)
    print "--- \u{1F9D9} The Master says: ---\n".colorize(:yellow)
    print "\"Something is wrong. Please meditate on ".colorize(:green)
    print test_case_bold, " topic\nand try to follow the path to Enlightenment \u{1F9D8}\"\n".colorize(:green)
    exit 1
  end
end
