require_relative 'subset_sum'
require 'minitest/autorun'

class SubsetSumTest < Minitest::Test
  def test_it
    tester = SubsetSum.new

    test1 = [3, 34, 4, 12, 5, 1]
    test2 = [5, 6, 0]
    test3 = [3, 34, 4, 12, 5, 1]
    test4 = [3, 34, 4, 12, 5, 1]

    assert_equal [3, 4], tester.subset_sum(test1, 7)
    assert_equal [34], tester.subset_sum(test3, 34)
    assert_equal [5, 6], tester.subset_sum(test2, 11)
    assert_equal [[4, 5], [3, 5, 1]], tester.subset_sum(test4, 9)
  end
end
