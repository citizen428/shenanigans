require "minitest/autorun"
require "shenanigans/integer/divisible_by"

class StringLength < Minitest::Test
  def test_divide_by_zero
    refute 3.divisible_by(0)
  end

  def test_not_divisible
    refute 3.divisible_by(2)
  end

  def test_divisible
    assert 9.divisible_by(3)
  end
end
