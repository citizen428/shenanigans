require 'minitest/autorun'
require 'shenanigans/kernel/require_optional'
require 'stringio'

class RequireOptional < MiniTest::Unit::TestCase
  def test_require_optional
    assert_equal require_optional('non_existent'), nil
  end

  def test_require_optional_with_block
    res = require_optional 'non_existent' do
      42
    end

    assert_equal res, 42
  end
end
