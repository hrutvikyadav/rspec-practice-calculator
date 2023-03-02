require './lib/calculator'

describe Calculator do

  describe "#add" do
    it "returns the sum of two numbers" do
      calculator = Calculator.new
      expect(calculator.add(5, 2)).to eql(7)
    end
  
    it "returns sum of multiple numbers" do
      calc = Calculator.new
      expect(calc.add(1, 2, 3)).to eql(6)
    end
  end

  describe "#subtract" do
    it "returns subtraction of given args" do
      calc = Calculator.new
      expect(calc.subtract(20, 10, 5)).to eql(5)
    end
  end

end