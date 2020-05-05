require "minitest/autorun"
require "shenanigans/string/in_groups_of"

class InGroupsOf < Minitest::Test
  def test_in_groups_of
    str = "aabbcc"
    assert str.in_groups_of(2) == ["aa", "bb", "cc"]
    assert "".in_groups_of(2) == []
    assert_raises(ArgumentError) { "".in_groups_of(0) }
  end
end
