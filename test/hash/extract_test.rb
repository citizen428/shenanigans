require "minitest/autorun"
require "shenanigans/hash/extract"

class Extract < Minitest::Test
  def test_extract
    hash = { a: 1, b: 2, c: 3 }
    assert_equal hash.extract(:b, :a), { a: 1, b: 2 }
    assert_equal hash.extract(:a, :d), { a: 1 }
    assert_equal({}.extract(:a, :c), {})
  end
end
