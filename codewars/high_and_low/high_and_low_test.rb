require_relative 'high_and_low'
require 'minitest/autorun'

class HighLowTest < Minitest::Test
  def test_high_and_low
    high_and_low = HighLow.new
    test1 = high_and_low.high_and_low("1 2 3 4 5")  # return "5 1"
    test2 = high_and_low.high_and_low("1 2 -3 4 5") # return "5 -3"
    test3 = high_and_low.high_and_low("1 9 3 4 -5") # return "9 -5"
    test4 = high_and_low.high_and_low("4 5 29 54 4 0 -214 542 -64 1 -3 6 -6") # return "542 -214"

    assert_equal test1, "5 1"
    assert_equal test2, "5 -3"
    assert_equal test3, "9 -5"
    assert_equal test4, "542 -214"
  end
end
