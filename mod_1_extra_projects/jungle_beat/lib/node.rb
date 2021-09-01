# class Node
#   attr_reader :data, :next_node
#
#   def initialize(data, next_node = nil)
#     @data = data
#     @next_node = next_node
#   end
# end
class Node
  attr_reader :data

  def initialize(data)
    @data = data
  end

  def next_node

  end
end
