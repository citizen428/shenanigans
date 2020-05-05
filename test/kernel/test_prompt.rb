require "minitest/autorun"
require "shenanigans/kernel/prompt"
require "stringio"

class Prompt < Minitest::Test
  def setup
    @orig_stdin = $stderr
    @orig_stdout = $stdout
    $stdin = StringIO.new("42\n")
    $stdout = StringIO.new
  end

  def teardown
    $stdin = @orig_stdin
    $stdout = @orig_stdout
  end

  def test_prompt
    result = prompt("Foo> ")
    assert result == "42"
  end

  def test_prompt_with_conversion
    result = prompt("Foo> ", :to_f)
    assert result == 42.0
  end
end
