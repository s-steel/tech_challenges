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

  def test_map_values
    roman_to_int = RomanInteger.new
    test1 = roman_to_int.map_values('III')
    test2 = roman_to_int.map_values('IV')
    test3 = roman_to_int.map_values('IX')
    test4 = roman_to_int.map_values('LVIII')
    test5 = roman_to_int.map_values('MCMXCIV')
    expected1 = [1,1,1]
    expected2 = [1,5]
    expected3 = [1,10]
    expected4 = [50,5,1,1,1]
    expected5 = [1000,100,1000,10,100,1,5]

    assert_equal expected1, test1
    assert_equal expected2, test2
    assert_equal expected3, test3
    assert_equal expected4, test4
    assert_equal expected5, test5
  end

  # def test_sum_individual
  #   roman_to_int = RomanInteger.new
  #   test1 = roman_to_int.sum_individual('I')
  #   test2 = roman_to_int.sum_individual('V')
  #   test3 = roman_to_int.sum_individual('X')
  #   test4 = roman_to_int.sum_individual('L')
  #   test5 = roman_to_int.sum_individual('C')
  #   test6 = roman_to_int.sum_individual('D')
  #   test7 = roman_to_int.sum_individual('M')

  #   assert_equal 1, test1
  #   assert_equal 5, test2
  #   assert_equal 10, test3
  #   assert_equal 50, test4
  #   assert_equal 100, test5
  #   assert_equal 500, test6
  #   assert_equal 1000, test7
  # end
end
