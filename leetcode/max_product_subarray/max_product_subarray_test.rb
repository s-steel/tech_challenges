require_relative 'max_product_subarray'
require 'minitest/autorun'

class MaxProductSubarrayTest < Minitest::Test
  def test_max_product
    max = MaxProductSubarray.new

    assert_equal 6, max.max_product([2,3,-2,4])
    assert_equal 0, max.max_product([-2,0,-1])
  end
end
