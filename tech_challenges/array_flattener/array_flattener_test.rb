require 'minitest/autorun'
require_relative 'array_flattener'

class ArrayFlattenerTest < Minitest::Test
  def test_array_flattener
    flattener = ArrayFlattener.new
    nested_array = [1, 2, 3, [[4], 5], [[[6]]]]
    expected = [1, 2, 3, 4, 5, 6]

    assert_equal expected, flattener.array_flattener(nested_array)
  end

  def test_array_flattener_with_strings
    flattener = ArrayFlattener.new
    nested_array = ["hi", "this is", [[["string"], "that is very"], [[[["nested"]]]]]]
    expected = ['hi', 'this is', 'string', 'that is very', 'nested']

    assert_equal expected, flattener.array_flattener(nested_array)
  end
end
