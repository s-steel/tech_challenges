require_relative 'longest_substring'
require 'minitest/autorun'

class LongestSubstringTest < Minitest::Test
  def test_longest_substring
    longest_substring = LongestSubstring.new

    test1 = longest_substring.length_of_longest_substring('abcabcbb')
    test2 = longest_substring.length_of_longest_substring('bbbbb')
    test3 = longest_substring.length_of_longest_substring('pwwkew')
    test4 = longest_substring.length_of_longest_substring('')
    test5 = longest_substring.length_of_longest_substring('zdklscuphygzhrdampmeygkiqptacbudggraknpslwrupuubmhhkpsuhhnklqepwniwxvmpikidzd')
    assert_equal 3, test1
    assert_equal 1, test2
    assert_equal 3, test3
    assert_equal 0, test4
    assert_equal 14, test5
  end

  def test_unique
    longest_substring = LongestSubstring.new
    test1 = longest_substring.unique?('abc')
    test2 = longest_substring.unique?('cbb')
    test3 = longest_substring.unique?('abcab')
    test4 = longest_substring.unique?('abcdefghi')

    assert_equal true, test1
    assert_equal false, test2
    assert_equal false, test3
    assert_equal true, test4
  end

  def test_find_all_subsets
    longest_substring = LongestSubstring.new
    test1 = longest_substring.find_all_subsets('abc')
    test2 = longest_substring.find_all_subsets('acc')
    expected1 = ['a', 'ab', 'abc', 'b', 'bc', 'c']
    expected2 = ['a', 'ac', 'acc', 'c', 'cc']
    
    assert_equal expected1, test1
    assert_equal expected2, test2
  end
end
