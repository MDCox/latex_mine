class Operand
  attr_reader :input, :children

  def initialize(opString)
    @input = opString
    @children = Operand.findChildren(input) 
  end

  def FindChildren(operand)
    
  end
end
