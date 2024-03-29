class Hash
  # Checks if a hash has a certain structure.
  #
  # @example Simple hash
  #     h = { k1: 1, k2: "1" }
  #     h.has_shape?(k1: Integer, k2: String) #=> true
  #     h.has_shape?(k1: Class, k2: String) #=> false
  # @example Nested hashes
  #     h = { k1: [], k2: { k3: Struct.new("Foo") } }
  #     shape = { k1: Array, k2: { k3: Module } }
  #     h.has_shape?(shape) #=> true
  def has_shape?(shape)
    all? do |k, v|
      Hash === v ? v.has_shape?(shape[k]) : shape[k] === v
    end
  end
end
