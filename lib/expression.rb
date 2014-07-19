class Expression
  attr_reader :input, :operator_symbol, :operator, :operands

  # An expression contains 2 operands and 1 operator.
  # Both operands are acted upon by the 1 operator.
  # An operand can be an expression.

  def initialize(expString)
    @input = expString
	  @operator = nil
	  @operands = []

    parse
  end

  def parse
	  @operator_symbol = @input.match(/[\+\-]/).to_s

    if @operator_symbol != ""
	    @operands = @input.split(@operator_symbol)
      @operator = Operator.lookup[@operator_symbol]
    end
  end

  def generate_code
    operator_object = @operator.new(@operands)
    operator_object.generate_code
  end
end