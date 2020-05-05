require 'minitest/autorun'
require 'shenanigans/kernel/with'

class With < Minitest::Test
  def test_with
    result = with([]) do |a|
      a << "a"
      a << "b"
    end
    assert result == %w(a b)
  end
end
