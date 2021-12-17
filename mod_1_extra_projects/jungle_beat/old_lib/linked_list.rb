class LinkedList
  attr_accessor :head

  def initialize(head = nil)
    @head = head
  end

  def append(data, node = nil)
    if @head.nil?
      @head = Node.new(data)
      p @head.data
    elsif @head.next_node.nil?
      @head = Node.new(@head)
      @head.next_node = node
    else
      @head.new_node(data, node)
      p @head.next_node
    end
    # if @head.next_node.nil?
    #   p @head.data
    # else
    #   p @head.next_node
    # end
  end

  def count
    if @head.nil?
      return nil
    elsif @head
      return 1
    end
  end

  def to_string
    @head.data
  end
end
