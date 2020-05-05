require 'minitest/autorun'
require 'shenanigans/hash/to_ostruct'

class ToOstruct < Minitest::Test
  def test_simple_hash
    struct = {a: 1, b: 2}.to_ostruct
    assert struct.a == 1
    assert struct.b == 2
  end

  def test_nested_hash
    struct = {a: 1, b: {c: 3}}.to_ostruct
    assert struct.a == 1
    assert struct.b.c == 3
  end

  def test_nested_array
    struct = {a: 1, b: [{c: 2}, 5]}.to_ostruct
    assert struct.a == 1
    assert struct.b.first.c == 2
    assert struct.b.last == 5
  end
end
