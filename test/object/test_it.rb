require 'minitest/autorun'
require 'shenanigans/object/it'

class Identity < MiniTest::Unit::TestCase
  def test_identity
    arr = [1, "2", :tree]
    assert arr.map(&:it) == arr
    assert [1,1,2,3].group_by(&:it) == {1 => [1, 1], 2 => [2], 3 => [3]}
  end
end
