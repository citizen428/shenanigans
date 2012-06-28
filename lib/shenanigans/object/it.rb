class Object
  # An identity method that provides access to an object's
  # <tt>self</tt>.
  #  [1,2,3,4,5,1,2,2,3].group_by(&:it)
  #  #=> {1=>[1, 1], 2=>[2, 2, 2], 3=>[3, 3], 4=>[4], 5=>[5]}
  def it
    self
  end
end
