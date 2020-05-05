class String
  # Returns an array of the string broken down into groups of
  # <tt>size</tt> characters.
  #   "aabbcc".in_groups_of(2) #=> ['aa', 'bb', 'cc']
  #   "".in_groups_of(2) #=> []
  #   "".in_groups_of(0) #=> ArgumentError
  def in_groups_of(size)
    raise ArgumentError, "Size of group must be >= 1" if size < 1

    scan(/.{1,#{size}}/)
  end
end
