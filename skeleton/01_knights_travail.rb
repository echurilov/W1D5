class KnightPathFinder
  attr_accessor :visited_pos, :root_node, :board
  def initialize(root_node=[0,0])
    @root_node = root_node
    @visited_pos = [root_node]
    @board = Array.new(8) {Array.new(8)}
  end 
  
  def new_move_positions(pos)
    KnightPathFinder.valid_moves.reject {|pos| visited_pos.include?(pos)}
  end 
  
  def self.valid_moves
    
  end 
  
  def move_combos
    directions = [1,-1,2,-2]
    dir_combo = directions.permutation(2).to_a
    dir_combo.reject {|move| move[0].abs == move[1].abs}
  end
  
  def build_move_tree
  end 
  
  def find_path(end_pos)
  end 
  
end 