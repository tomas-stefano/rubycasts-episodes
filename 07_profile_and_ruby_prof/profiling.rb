require 'simple_prime'
require 'ruby-prof'

result = RubyProf.profile do
  (0..101).each do |number|
    number.fast_prime?
  end
end

RubyProf::FlatPrinter.new(result).print(STDOUT)

# RubyProf::DotPrinter.new(result).print(STDOUT)
# RubyProf::GraphPrinter.new(result).print(STDOUT)
# RubyProf::GraphHtmlPrinter.new(result).print(STDOUT)
# RubyProf::CallStackPrinter.new(result).print(STDOUT)
# RubyProf::CallTreePrinter.new(result).print(STDOUT)
# RubyProf::MultiPrinter.new(result).print({})
