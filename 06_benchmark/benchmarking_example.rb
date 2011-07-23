require 'simple_prime'
require 'benchmark'
require 'prime' # stdlib

range = (0..100_000)

puts Benchmark.measure { range.each { |number| number.simple_prime? } }

Benchmark.benchmark do |x|
  x.report("With Stdlib") { range.each { |number| number.prime? } }
  x.report("With SimplePrime") { range.each {|number| number.simple_prime? } }
end

Benchmark.bmbm do |x|
  x.report("With Stdlib") { range.each { |number| number.prime? } }
  x.report("With SimplePrime") { range.each {|number| number.simple_prime? } }
end

# Profiling! Até a próxima! :)