require_relative 'valid_parens'
require 'minitest/autorun'

class ValidParensTest < Minitest::Test
  def test_is_valid
    valid_parens = ValidParens.new

    assert_equal true, valid_parens.is_valid('()')
    assert_equal true, valid_parens.is_valid('()[]{}')
    assert_equal false, valid_parens.is_valid('(]')
    assert_equal false, valid_parens.is_valid('([)]')
    assert_equal true, valid_parens.is_valid('{[]}')
  end
end
