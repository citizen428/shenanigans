module Kernel
  # Optionally require a gem. If it is not available, <tt>nil</tt>
  # will be returned. Alternatively, a block can be provided with code
  # to run.
  #
  # @example Without a block
  #   require "non_existent" #=> nil
  # @example With a custom block
  #   require "non_existent" do
  #     puts "Something went wrong"
  #   end #=> Outputs "Something went wrong"
  def require_optional(gem, &block)
    require gem
  rescue LoadError
    block&.call
  end
end
