class PolyTreeNode
  def initialize(value)
    @value = value
    @parent = nil 
    @children = []
  end
  
  def parent
    @parent
  end
  
  def children
    @children
  end 
  
  def value
    @value
  end
  
  def parent=(new_parent)
    old_parent = @parent
    @parent = new_parent
    if old_parent
      old_parent.children.reject{|child| child == self}
    end
    unless new_parent.nil? || new_parent.children.include?(self)
      new_parent.children << self
    end
  end
  
  # def inspect
  #   # p "node:{#{}}"
  # end
end