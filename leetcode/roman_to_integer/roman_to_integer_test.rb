require_relative 'roman_to_integer'
require 'minitest/autorun'

class RomanIntegerTest < Minitest::Test
  def test_roman_to_int
    roman_to_int = RomanInteger.new
    test1 = roman_to_int.roman_to_int('III')
    test2 = roman_to_int.roman_to_int('IV')
    test3 = roman_to_int.roman_to_int('IX')
    test4 = roman_to_int.roman_to_int('LVIII')
    test5 = roman_to_int.roman_to_int('MCMXCIV')

    assert_equal 3, test1
    assert_equal 4, test2
    assert_equal 9, test3
    assert_equal 58, test4
    assert_equal 1994, test5
  end
end
