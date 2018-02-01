module Kernel
  # Optionally require a gem. If it is not available, <tt>nil</tt>
  # will be returned. Alternatively, a block can be provided with code
  # to run.
  #   require 'non_existent'
  #   #=> nil
  #
  #   require 'non_existent' do
  #     puts 'Something went wrong'
  #   end
  #   #=> Outputs 'Something went wrong'
  def require_optional(gem, &block) #:doc:
    require gem
  rescue LoadError
    block.call if block
  end

  private :require_optional
end
