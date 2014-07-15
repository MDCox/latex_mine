class Expression
  attr_reader :input

  # An expression contains 2 operands and 1 operator.
  # Both operands are acted upon by the 1 operator.
  # An operand can be an expression.

  def init(expString)
	@input = expString
	@operator = nil
	@operands = []

	self.parse
  end

  def parse
	@operator = @input.match(/\+/).to_s

    if operator != ""
	  split_expression = @input.split(operator)
      split_expression.each do |operand| 
        @operands.push(Operand.new(operand))
	  end
	end
  end

end
