require "minitest/autorun"
require "shenanigans/kernel/with"

class With < Minitest::Test
  def test_with
    result = with([]) { |a|
      a << "a"
      a << "b"
    }
    assert result == %w[a b]
  end
end
