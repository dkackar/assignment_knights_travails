Move = Struct.new(:pos, :depth, :child, :parent)

class MoveTree

  attr_accessor :root, :max_depth

  def initialize(pos = nil, max_depth = 1)
    @root = pos
    @max_depth = max_depth
  end

  def create_first_move(pos, max_depth)
    @root = Move.new(pos, @max_depth, @child_pos)
  end

  def create_move(pos, max_depth)
    possible_positions(pos)

    if @root.nil?
      create_first_move(pos, @max_depth)
    else

    
      # ignore this section
      # current_node = @root

    end

  end

  def possible_positions(pos)
    @child_pos = []
    y = pos[0]
    x = pos[1]

    @child_pos = [[y+2, x-1],[y+2, x+1], [y+1, x+2], 
            [y-1, x+2], [y-2, x+1], [y-2, x-1], [y-1, x-2], [y+1, x-2]]

  end

end

tree = MoveTree.new()
tree.create_move([3,3], 1)
print tree.root.child