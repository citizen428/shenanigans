class Module
  private

  # Works like attr_accessor but generates private methods for
  # class internal use only.
  def private_accessor(*names)
    names.each do |name|
      instance_var_name = "@#{name}"

      define_method(name) do
        instance_variable_get(instance_var_name)
      end

      define_method("#{name}=") do |value|
        instance_variable_set(instance_var_name, value)
      end

      self.send(:private, name)
      self.send(:private, "#{name}=")
    end
  end
end
