require "./lib/operator"
require "./lib/operators/addition"
require "./lib/operators/subtraction"

require "./lib/equation"
require "./lib/expression"


input_equation = ARGV[0]
puts "Solving #{input_equation}"

eq = Equation.new(input_equation)
eq.generate_code

File.open("output.rb", 'w') do |f| 
  f.write(eq.output)
end

puts "output.rb written"
