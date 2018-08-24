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
  
  def add_child(child_node)
    child_node.parent = self
  end
  
  def remove_child(child_node)
    raise "Not a child!" if child_node.parent == nil
    child_node.parent = nil
  end
  
  def value
    @value
  end
  
  def parent=(new_parent)
    old_parent = @parent
    @parent = new_parent
    if old_parent
      old_parent.children.delete(self)
    end
    unless new_parent.nil? || new_parent.children.include?(self)
      new_parent.children << self
    end
  end
  
  def dfs(target_value)
    return self if self.value == target_value
    return nil if self.children == nil
    self.children.each do |child|
      child.dfs(target_value)
    end
  end
end