require 'minitest/autorun'
require 'shenanigans/fixnum/string_length'

class StringLength < Minitest::Test
  def test_zero
    assert 0.string_length == 1
  end

  def test_positive
    assert 123.string_length == 3
  end

  def test_negative
    assert -1.string_length == 2
  end
end
