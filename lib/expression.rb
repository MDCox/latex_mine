class Expression
  attr_reader :input, :operator, :operands, :result

  # An expression contains 2 operands and 1 operator.
  # Both operands are acted upon by the 1 operator.
  # An operand can be an expression.

  def initialize(expString)
    @input = expString
	  @operator = nil
	  @operands = []

	  self.parse
    self.result
  end

  def parse
	  @operator = @input.match(/\+/).to_s

    if operator != ""
	    split_expression = @input.split(operator)
      split_expression.each do |operand| 
        @operands.push(Expression.new(operand))
	    end
    else
      @input.to_f
    end
  end

  def result
    operator(@operands[0], @operands[1])
  end

end
