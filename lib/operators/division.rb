class Division < Operator

  def initialize(operands)
    @symbols = "/"
    @operands = operands
  end

  def generate_code
    code = "(#{@operands[0]} / #{@operands[1]})"
    code
  end
end
