require_relative 'reverse_string'
require 'minitest/autorun'

class ReverseStringTest < Minitest::Test
  def test_it
    tester = ReverseString.new

    assert_equal true, tester.rotate_string('USACanada', 'CanadaUSA')
    assert_equal false, tester.rotate_string('USCanadaA', 'USACanada')
  end
end