class Array
  # Similar to +reduce+/+inject+, but also returns intermediate values. Has the 
  # same interface as +reduce+/+inject+, so an initial value, an operator or 
  # both can be supplied. This method may eventually be moved to the 
  # +Enumerable+ module.
  #
  # @example Symbol argument
  #   a = (1..4).to_a
  #   a.reductions(:+) #=> 10
  # @example Initial value and symbol argument
  #   a.reductions(50, :+) #=> 60
  # @example Block argument
  #   %w(a b c).reductions { |s1, s2| s1+s2 } #=> ["a", "ab", "abc"]
  def reductions(*args, &block)
    arr = dup

    if args.size == 1
      Symbol === (arg = args.first) ? op = arg : initial = arg
    else
      initial, op, _ = args
    end

    raise ArgumentError, "Need an operator or block" unless op || block

    initial ||= arr.shift

    arr.inject([initial, [initial]]) { |(acc, result), el|
      val = op ? acc.send(op, el) : yield(acc, el)
      [val, result << val]
    }.last
  end
end
