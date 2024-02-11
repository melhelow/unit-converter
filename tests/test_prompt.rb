require 'minitest/autorun'
require './prompt'

class TestConvert < Minitest::Test
  def test_kg
    convert = Convert.new
    kilogram = 2
    expected_result = kilogram * 2.20462
    assert_equal(expected_result, convert.mult_input(kilogram), "Conversion from kg to lb method failed")
  end

  def test_lb
    convert = Convert.new
    pound = 3
    excpected_result = pound * 0.45359237
    assert_equal(excpected_result, convert.div_input(pound), "Conversion from lb to kg method failed" )
  end
end
