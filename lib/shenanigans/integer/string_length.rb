class Integer
  # Returns the length of the number's string representation.
  # @example
  #     0.string_length #=> 1
  #     123.string_length #=> 3
  #     -1.string_length #=> 2
  def string_length
    return 1 if zero?

    len = Math.log10(abs).floor.next
    positive? ? len : len.next
  end
end
