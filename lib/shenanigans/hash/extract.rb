class Hash
  # Returns a new hash only with the specified keys (if present).
  #
  # @example Key order does not matter
  #   hash = { a: 1, b: 2, c: 3 }
  #   hash.extract(:b, :a) #=> { a: 1, b: 2 }
  # @example Missing keys are ignored
  #   hash.extract(:a, :d) #=> { a: 1}
  def extract(*ks)
    existing = keys & ks
    Hash[existing.zip(values_at(*existing))]
  end
end
