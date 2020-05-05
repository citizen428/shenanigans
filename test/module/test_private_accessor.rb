require 'minitest/autorun'
require 'shenanigans/module/private_accessor'

class PrivateAccessor < Minitest::Test
  class Foo
    private_accessor :bar, :baz

    def initialize(v1, v2)
      self.bar = v1
      self.baz = v2
    end
  end

  def test_private_accessor
    f = Foo.new(1, 2)
    assert f.instance_variables == [:@bar, :@baz]
    assert (f.private_methods & [:bar, :baz, :bar=, :baz=]).size == 4
    assert f.instance_variable_get("@bar") == 1
    assert f.instance_variable_get("@baz") == 2
  end
end
