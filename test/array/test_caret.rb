require "minitest/autorun"
require "shenanigans/array/caret"

class ArrayCaret < Minitest::Test
  def test_caret
    result = [1, 2, 3] ^ [1, 2, 4]
    assert result == [3, 4]
  end
end
