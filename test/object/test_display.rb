require 'minitest/autorun'
require 'shenanigans/object/display'
require 'stringio'

class Display < Minitest::Test
  def setup
    @orig_stdout = $stdout
    $stdout = StringIO.new("", "r+")
  end

  def teardown
    $stdout = @orig_stdout
  end

  def test_display
    str = "foo"
    assert str.display == str
    $stdout.rewind
    assert $stdout.gets.chomp == str
  end

  def test_display_alias
    str = "foo"
    assert str.d == str
    $stdout.rewind
    assert $stdout.gets.chomp == str
  end

  def test_display_no_new_line
    str = "foo"
    assert str.display(false) == str
    $stdout.rewind
    assert $stdout.gets == str
  end

end
