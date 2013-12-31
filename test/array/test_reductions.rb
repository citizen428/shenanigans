require 'minitest/autorun'
require 'shenanigans/array/reductions'

class ArrayReductions < MiniTest::Unit::TestCase
  TEST_ARRAY = [*1..4]

  def test_reductions_without_params_or_block
    assert_raises(ArgumentError) { TEST_ARRAY.reductions }
  end

  def test_reductions_operator_only
    assert TEST_ARRAY.reductions(:+) == [1,3,6,10]
  end

  def test_reductions_initial_only
    assert TEST_ARRAY.reductions(50) { |acc,b| acc+b} == [50,51,53,56,60]
  end

  def test_reductions_inital_and_operator
    assert TEST_ARRAY.reductions(50, :+) == [50,51,53,56,60]
  end

  def test_reductions_without_params
    assert TEST_ARRAY.reductions { |acc,b| acc+b} == [1,3,6,10]
    assert %w(a b c).reductions { |s1, s2| s1+s2 } == %w(a ab abc)
  end
end
