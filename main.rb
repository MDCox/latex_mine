require "./lib/operators"
require "./lib/equation"

input_equation = ARGV[0]

eq = Equation.new(input_equation)

puts "Solving #{input_equation}"