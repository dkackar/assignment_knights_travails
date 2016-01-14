Move = Struct.new(:pos, :depth, :child, :parent)

class MoveTree
  POSSIBLE_POS = [[-1,2], [1,2], [2,1], [2,-1], [1,-2], [-1,-2], [-2,-1],[-2,1]]
  SIZE = 5 

  attr_accessor :root, :max_depth

  def initialize(pos = nil, max_depth = 1)
    @root = pos
    @max_depth = max_depth
  end

  def create_first_move(pos)
    @root = Move.new(pos, 1, [])
  end

  def create_move(current_node=nil, pos, max_depth)
    #possible_positions(pos)

    if current_node.nil?
      create_first_move(pos)
      current_node = @root
    end 
    
    #puts "Current node is #{current_node}"
    depth = current_node.depth + 1

    possible_positions(pos).each do |valid_pos|
      child_move = Move.new(valid_pos,depth,[],current_node)
      current_node.child << child_move
    end

    current_node.child.each do |each_child|
      
    end  


  end

  def possible_positions(pos)
    @child_pos = []
    y = pos[0]
    x = pos[1]
    POSSIBLE_POS.each do |x1, y1|
      @child_pos << [x+x1, y+y1] if (1..SIZE) === x+x1  && (1..SIZE) === y+y1
    end
    @child_pos
  end

end

tree = MoveTree.new()
tree.create_move([3,3], 1)
print tree.root