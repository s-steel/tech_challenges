require 'minitest/autorun'
require_relative 'snail'

class SnailTest < Minitest::Test
  def test_three_by_three
    snail = Snail.new
    matrix = [
      [1, 2, 3],
      [4, 5, 6],
      [7, 8, 9]
    ]
    expected = [1, 2, 3, 6, 9, 8, 7, 4, 5]
    assert_equal expected, snail.snail_array(matrix)
  end

  def test_five_by_five
    snail = Snail.new
    matrix = [
      [1, 2, 3, 7, 4],
      [4, 5, 6, 9, 4],
      [7, 8, 9, 2, 0],
      [7, 8, 9, 2, 0],
      [7, 8, 9, 2, 0]
    ]
    expected = [1, 2, 3, 7, 4, 4, 0, 0, 0, 2, 9, 8, 7, 7, 7, 4, 5, 6, 9, 2, 2, 9, 8, 8, 9]
    assert_equal expected, snail.snail_array(matrix)
  end
end
