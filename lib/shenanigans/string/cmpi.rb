class String
  # Compares strings ignoring case
  #   "test".cmpi("tesT")
  #   #=> true
  def cmpi(other)
    casecmp(other).zero?
  end
end
