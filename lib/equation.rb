class Equation
  attr_reader :input

  def initialize(input)
    @input = input
  end

  def parse
    idExpressions(@input)
  end

  def generate_code
    code = ""

    expressions.each do |expression|
      code += expression.generate
	end
  end

  def output
	header = "def solve"
	generated_code = expressions.
	footer = "end\n solve()"
  end	  
end
