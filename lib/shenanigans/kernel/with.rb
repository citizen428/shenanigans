module Kernel
  # A Pascal/ActionScript like <tt>with</tt> method. Yields its
  # argument to the provided block and then returns it.
  #
  # @example
  #   with([]) do |a|
  #     a << "a"
  #     a << "b"
  #   end #=> ["a", "b"]
  def with(o, &blk)
    o.tap(&blk)
  end

  private :with
end
