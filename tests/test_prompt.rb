require 'minitest/autorun'
require './prompt'

class TestConvert < Minitest::Test

  def test_kg
    convert = Convert.new
    assert_equal 4.40925, convert.mult_input(2 * 2.20462), "Addition method failed"
  end
end
