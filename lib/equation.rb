class Equation
  attr_reader :input, :code

  def initialize(input)
    @input = input
  end

  def generate_code
  	expression = Expression.new(@input)
	  @code = expression.generate_code
	  @code
  end

  def output
  	header = "def solve"
  	generated_code = @code
  	footer = "end\n puts solve()"
  
    [header, generated_code, footer].join("\n")
  end	  

end
