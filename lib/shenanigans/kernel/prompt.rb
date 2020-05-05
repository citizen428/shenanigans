module Kernel
  # Currently only used by <tt>prompt</tt>:
  # <tt>:to_i</tt>, <tt>:to_f</tt>, <tt>:to_r</tt>, <tt>:to_sym</tt>, <tt>:to_c</tt>
  CONVERSIONS = [:to_i, :to_f, :to_r, :to_sym, :to_c]

  # Displays a prompt and returns chomped input.
  # Modelled after the Python method <tt>raw_input</tt>, but also can
  # be supplied with an optional conversion method.
  # 
  # @example A simple prompt
  #   prompt("Prompt> ")
  #   Prompt> 12 #=> "12"
  # @example A prompt with conversion
  #   prompt("Prompt> ", :to_f)
  #   Prompt> 12 #=> 12.0
  def prompt(text = "", conversion = nil)
    print text unless text.empty?
    input = gets.chomp
    CONVERSIONS.include?(conversion) ? input.send(conversion) : input
  end

  private :prompt
end
