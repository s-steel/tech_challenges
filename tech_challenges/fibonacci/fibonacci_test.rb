require_relative 'fibonacci'
require 'minitest/autorun'

class FibonacciTest < Minitest::Test
  def test_it
    tester = Fibonacci.new

    assert_equal 13, tester.fib_sequence(7)
    assert_equal 34, tester.fib_sequence(9)
    assert_equal 2, tester.fib_sequence(3)
    assert_equal 144, tester.fib_sequence(12)
    assert_equal 12_586_269_025, tester.fib_sequence(50)
    assert_equal 'Your number is too big!', tester.fib_sequence(51)
    assert_equal 'Your number is too big!', tester.fib_sequence(112)
  end
end
