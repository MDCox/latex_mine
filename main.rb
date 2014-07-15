require "./lib/operators"
require "./lib/equation"

input_equation = ARGV[0]
puts "Solving #{input_equation}"

eq = Equation.new(input_equation)

File.open("output.rb", 'w') do |f| 
  f.write(eq.output)
end

puts "output.rb written"
