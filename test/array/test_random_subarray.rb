require 'minitest/autorun'
require 'shenanigans/array/random_subarray'

class RandomSubarray < Minitest::Test
  def test_random_subarray
    result = [*1..5].random_subarray(3)
    assert result.size == 3
    assert result.map { |a| a.all? { |x| x < 5 } }
  end
end
