require 'minitest/autorun'
require 'shenanigans/object/identity'

class Identity < MiniTest::Unit::TestCase
  def test_identity
    arr = [1, "2", :tree]
    assert arr.map(&:identity) == arr
  end
end
