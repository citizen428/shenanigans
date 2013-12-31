class Array
  def reductions(*args, &block)
    arr = dup

    if args.size == 1
      Symbol === (arg = args.first) ? op = arg : initial = arg
    else
      initial, op, _ = args
    end

    raise ArgumentError, "Need an operator or block" unless op || block

    initial ||= arr.shift

    arr.inject([initial, [initial]]) do |(acc, result), el|
      val = op ? acc.send(op, el) : yield(acc, el)
      [val, result << val]
    end.last
  end
end
