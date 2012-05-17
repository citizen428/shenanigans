require 'minitest/autorun'
require 'shenanigans/array/zip_with'

class ZipWith < MiniTest::Unit::TestCase
  def test_zip_with_with_symbol
    result = [*1..3].zip_with([*1..3], :+)
    assert result == [2, 4, 6]
  end

  def test_zip_with_with_block
    result = [*?a..?c].zip_with([*?a..?c]) { |a, b| a * 2 + b.upcase }
    assert result == %w(aaA bbB ccC)
  end
end
