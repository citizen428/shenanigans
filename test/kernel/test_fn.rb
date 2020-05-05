require 'minitest/autorun'
require 'shenanigans/kernel/fn'

class Fn < Minitest::Test
  def test_with_symbols
    result = ["foo bar", "baz qux"].map(&fn(:split, :last))
    assert result == ["bar", "qux"]
  end

  def test_with_symbols_and_lambdas
    result = (1..3).map(&fn(:next, -> x { x * x }, -> x { x.to_f / 2 } ))
    assert result == [2.0, 4.5, 8.0]
  end
end
