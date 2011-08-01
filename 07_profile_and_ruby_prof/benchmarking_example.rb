require 'simple_prime'
require 'benchmark'

range = (0..100_000)

Benchmark.bmbm do |x|
  x.report("With SimplePrime") { range.each {|number| number.simple_prime? } }
  x.report("With FastPrime") { range.each {|number| number.fast_prime? }}
end
