class String
  # Compares strings ignoring case
  #
  # @example
  #   "test".cmpi("tesT") #=> true
  def cmpi(other)
    casecmp(other).zero?
  end
end
