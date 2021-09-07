class Node
  attr_reader :data, :next_node

  def initialize(data, next_node = nil)
    @data = data
    @next_node = next_node
  end

  def next_node
    if @next_node.nil?
      return nil
    else
      @next_node == Node.new(new_node)
    end
  end
end
# class Node
#   attr_reader :data
#
#   def initialize(data)
#     @data = data
#   end
#
#   def next_node
#     if next_node.nil?
#       return nil
#     elsif !@data.nil?
#       Node.new(data)
#     end
#   end
# end
