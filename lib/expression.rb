class Expression
  attr_reader :input, :operator, :operands, :code

  # An expression contains 2 operands and 1 operator.
  # Both operands are acted upon by the 1 operator.
  # An operand can be an expression.

  def initialize(expString)
    @input = expString
	  @operator = nil
	  @operands = []

    self.eval
    return @code
  end

  def eval
    self.parse
    self.calc_result
  end

  def parse
	  @operator = @input.match(/\+/).to_s

    if @operator != ""
	    split_expression = @input.split(@operator)
      split_expression.each do |operand| 
        @operands.push(Expression.new(operand).result) 
	    end
    end
  end

  def calc_result
    if @operator == "" && @operands == []
      @result = @input.to_f
    else
      @result = Operator.lookup[@operator].new(@operands[0], @operands[1]).result
    end
  end

end
