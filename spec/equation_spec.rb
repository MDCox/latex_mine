require_relative "../lib/equation"

describe "Equation" do
  it "should initialize with @input variable set to input" do
    test_equation = Equation.new 'E_0 &= mc^2'
    test_equation.input.should eq 'E_0 &= mc^2'
  end
end