require 'minitest/autorun'
require_relative 'palindrome_nums'

class PalindromeNumsTest < Minitest::Test
  def test_palindrome_collection
    pali = PalindromeNums.new

    expected = [209, 308, 407, 506, 605, 704, 803, 902, 1000, 1001, 1002, 1003, 1004, 1005, 1006, 1007, 1008, 1010, 1011, 1012, 1013, 1014, 1015, 1016, 1017]

    assert_equal 25, pali.collect_palindromes.length
    assert_instance_of Array, pali.collect_palindromes
    assert_equal expected, pali.collect_palindromes
  end
end
