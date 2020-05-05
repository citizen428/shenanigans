require "minitest/autorun"
require "shenanigans/string/cmpi"

class Cmpi < Minitest::Test
  def cmpi
    str = "aabbcc"
    assert str.cmpi("AAbbcc")
    assert_equal cmpi("foo"), false
  end
end
