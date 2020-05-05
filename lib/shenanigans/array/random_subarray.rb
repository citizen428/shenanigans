class Array
  # Generates random subarrays. Uses random numbers and
  # bit-fiddling to assure performant uniform distributions
  # even for large arrays.
  #
  # @example
  #   a = *1..5
  #   a.random_subarray(3) #=> [[1, 3, 5], [2, 4], [1, 3, 4, 5]]

  def random_subarray(n = 1)
    raise ArgumentError, "negative argument" if n < 0

    (1..n).map do
      r = rand(2**size)
      select.with_index { |_, i| r[i] == 1 }
    end
  end
end
