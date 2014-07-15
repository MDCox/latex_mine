class Addition < Operator
    def initialize(operand1, operand2)
      @symbols = "+"
      self.do(operand1, operand2)
    end

    def do(operand1, operand2)
      @result = operand1 + operand2
      @result
    end
end