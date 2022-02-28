module Kernel
  # Composes a list of functions.
  # Functions can be specified as symbols or lambdas.
  #
  # @example Composing symbols
  #   ["foo bar", "baz qux"].map(&fn(:split, :last)) #=> ["bar", "qux"]
  # @example Composing symbols and lambdas
  #   (1..3).map(&fn(:next, -> x { x * x }, -> x { x.to_f / 2 } ))
  #   #=> [2.0, 4.5, 8.0]
  def fn(*funs)
    ->(x) do
      funs.inject(x) do |v, f|
        Proc === f ? f.call(v) : v.send(f)
      end
    end
  end
end
