require_relative 'longest_substring'
require 'minitest/autorun'

class LongestSubstringTest < Minitest::Test
  def test_longest_substring
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
end
