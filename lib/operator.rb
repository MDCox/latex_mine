class Operator
  attr_reader :symbols, :result

  def self.lookup
     { "+" => Addition, "-" => Subtraction } 
  end
end
