class Array
  # Returns an array containing elements exclusive between two arrays.
  #   [1, 2, 3] ^ [1, 2, 4]
  #   #=> [3, 4]
  def ^(other)
    (self | other) - (self & other)
  end
end
