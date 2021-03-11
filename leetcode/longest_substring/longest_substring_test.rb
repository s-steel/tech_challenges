require_relative 'longest_substring'
require 'minitest/autorun'

class LongestSubstringTest < Minitest::Test
  def test_longest_substring
    skip
    longest_substring = LongestSubstring.new

    test1 = longest_substring.longest_substring('abcabcbb')
    test2 = longest_substring.longest_substring('bbbbb')
    test3 = longest_substring.longest_substring('pwwkew')
    test4 = longest_substring.longest_substring('')
    assert_equal 3, test1
    assert_equal 1, test2
    assert_equal 3, test3
    assert_equal 0, test4
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
    expected = [[], ["a"], ["b"], ["c"], ["a", "b"], ["a", "c"], ["b", "c"], ["a", "b", "c"]]
    
    assert_equal expected, test1
  end
end
