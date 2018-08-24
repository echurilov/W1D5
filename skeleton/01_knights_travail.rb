class KnightPathFinder
  attr_accessor :visited_position, :root_node, :board
  def initialize(root_node=[0,0])
    @root_node = root_node
    @visited_position = [root_node]
    @board = Array.new(8) {Array.new(8)}
  end 
  
  def new_move_positions(pos)
    KnightPathFinder.valid_moves.reject {|pos| visited_position.include?(pos)}
  end 
  
  def self.valid_moves
    # list of moves array 
    
  end 
  
  def build_move_tree
  end 
  
  def find_path(end_pos)
  end 
  
end 