require 'minitest/autorun'
require './calculator'

class CalculatorSpec < MiniTest::Test
  # Test the accumulator

  def test_accumulator
    my_calculator = Calculator.new
    my_calculator.accumulator = 5
    assert_equal(my_calculator.accumulator, 5)
  end

  def test_accumulator_is_floating_point
    my_calculator = Calculator.new
    my_calculator.accumulator = 5
    assert_instance_of(Float, my_calculator.accumulator)
  end

  # Test the operations

  def test_add
    my_calculator = Calculator.new
    my_calculator.accumulator = 5
    assert_equal(12, my_calculator.add(7))
    assert_equal(0, my_calculator.add(-12))
  end

  def test_subtract
    my_calculator = Calculator.new
    my_calculator.accumulator = 5
    assert_equal(-2, my_calculator.subtract(7))
    assert_equal(10, my_calculator.subtract(-12))
  end

  def test_multiply
    my_calculator = Calculator.new
    my_calculator.accumulator = 5
    assert_equal(35, my_calculator.multiply(7))
    assert_equal(105, my_calculator.multiply(3))
  end

  def test_divide
    my_calculator = Calculator.new
    my_calculator.accumulator = 5
    assert_equal(2.5, my_calculator.divide(2))
    assert_equal(-10, my_calculator.divide(-0.25))
  end

  def test_divide_by_zero
    my_calculator = Calculator.new
    my_calculator.accumulator = 5
    assert_nil(my_calculator.divide(0))
  end
end

