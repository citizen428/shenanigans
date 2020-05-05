class Object
  # Outputs the object and also returns it.
  # Will use <tt>puts</tt> if <tt>new_line</tt> is <tt>true</tt> and
  # <tt>print</tt> otherwise.
  #   "foo".display
  #   foo
  #   #=> "foo"
  #
  #   "foo".display(false)
  #   foo#=> "foo"
  def display(new_line = true)
    m = new_line ? :puts : :print
    tap { |o| send(m, o) }
  end

  alias d display
end
