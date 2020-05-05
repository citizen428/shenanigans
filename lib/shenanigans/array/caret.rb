class Array
  # Returns an array containing elements exclusive between two arrays.
  #
  # @example
  #   [1, 2, 3] ^ [1, 2, 4] #=> [3, 4]
  def ^(other)
    (self - other) | (other - self)
  end
end
