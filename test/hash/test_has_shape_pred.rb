require "minitest/autorun"
require "shenanigans/hash/has_shape_pred"

class HasShape < Minitest::Test
  def setup
    @hash = {
      k1: 1.0,
      k2: 1,
      k3: {
        k4: "1",
        k5: {
          k6: Array
        }
      }
    }
  end

  def test_has_shape
    shape_pass = {
      k1: Float,
      k2: Integer,
      k3: {
        k4: String,
        k5: {
          k6: Class
        }
      }
    }

    assert @hash.has_shape?(shape_pass)
  end

  def test_has_shape_fail
    shape_fail = {
      k1: Float
    }

    assert !@hash.has_shape?(shape_fail)
  end
end
