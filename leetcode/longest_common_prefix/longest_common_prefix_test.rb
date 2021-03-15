require_relative 'longest_common_prefix'
require 'minitest/autorun'

class LongestCommonPrefixTest < Minitest::Test
  def test_longest_common_prefix
    longest = LongestCommonPrefix.new
    test1 = longest.longest_common_prefix(["flower","flow","flight"])
    test3 = longest.longest_common_prefix(["dog","dacecar","dar"])
    test2 = longest.longest_common_prefix(["dog","racecar","car"])
    test4 = longest.longest_common_prefix([])

    assert_equal 'fl', test1
    assert_equal 'd', test3
    assert_equal '', test2
    assert_equal '', test4
  end
end
