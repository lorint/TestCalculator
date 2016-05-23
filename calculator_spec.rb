require 'minitest/autorun'
require './calculator'

class CalculatorSpec < MiniTest::Test
  def test_accumulator
    my_calculator = Calculator.new
    my_calculator.accumulator = 5
    assert_equal(my_calculator.accumulator, 5)
  end

  def test_add
    my_calculator = Calculator.new
    my_calculator.accumulator = 5
    assert_equal(my_calculator.add(7), 12)
    assert_equal(my_calculator.add(-12), 0)
  end

  def test_subtract
    my_calculator = Calculator.new
    my_calculator.accumulator = 5
    assert_equal(my_calculator.subtract(7), -2)
    assert_equal(my_calculator.subtract(-12), 10)
  end

  def test_multiply
    my_calculator = Calculator.new
    my_calculator.accumulator = 5
    assert_equal(my_calculator.multiply(7), 35)
    assert_equal(my_calculator.multiply(3), 105)
  end

  def test_divide
    my_calculator = Calculator.new
    my_calculator.accumulator = 5
    assert_equal(my_calculator.divide(2), 2.5)
    assert_equal(my_calculator.divide(-0.25), -4)
  end
end

