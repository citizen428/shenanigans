class String
  # Compares strings ignoring case
  #   "test".cmpi("tesT")
  #   #=> true
  def cmpi(other)
    self.casecmp(other).zero?
  end
end
