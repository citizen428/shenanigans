class Integer
  # Checks whether the receiver is cleanly divisble by the argument.
  # @example
  #     3.divisble_by(0) #=> false
  #     3.divisble_by(2) #=> false
  #     9.divisble_by(3) #=> true
  def divisible_by(n)
    return false if n.zero?

    self % n == 0
  end
end

