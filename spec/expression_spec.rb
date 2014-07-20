require "spec_helper"

describe "Expression" do
  describe "#initialize" do
    it "should initialize with input" do
      exp = Expression.new("1+2")
      exp.input.should eq "1+2"
    end

    it "should run #parse on initialize" do
      exp = Expression.new("1+2")
      exp.operator_symbol.should eq "+"
      exp.operator.should eq Addition
      exp.operands.should eq ["1", "2"]
    end
  end
end