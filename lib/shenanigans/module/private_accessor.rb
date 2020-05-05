class Module
  # Works like <tt>attr_accessor</tt> but generates private getter/setter
  # methods for class internal use only. Useful for enforcing Smalltalk-style
  # internal encapsulation.
  #
  # For a more complete implementation of a similar feature see {ivar_encapsulation}[https://github.com/citizen428/ivar_encapsulation].
  def private_accessor(*names)
    names.each do |name|
      instance_var_name = "@#{name}"

      define_method(name) do
        instance_variable_get(instance_var_name)
      end

      define_method("#{name}=") do |value|
        instance_variable_set(instance_var_name, value)
      end

      send(:private, name)
      send(:private, "#{name}=")
    end
    nil # like attr_accessor
  end

  private :private_accessor
end
