class Equation
  attr_reader :input, :code

  def initialize(input)
    @input = input
  end

  def generate_code
    @code = ""

    expressions.each do |expression|
      @code += expression.generate
	  end
  end

  def output
  	header = "def solve"
  	generated_code = generate_code
  	footer = "end\n solve()"
  
    header + generated_code + footer
  end	  

end
