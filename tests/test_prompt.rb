require 'minitest/autorun'
require './prompt'

class TestConvert < Minitest::Test
  def test_kg
    convert = Convert.new
    kilogram = 2
    expected_result = 4.40924
    assert_equal(expected_result, convert.mult_input(kilogram), "Conversion from kg to lb method failed")
  end

  def test_lb
    convert = Convert.new
    pound = 2
    excpected_result = 0.90718474
    assert_equal(excpected_result, convert.div_input(pound), "Conversion from lb to kg method failed" )
  end
end
