class LinkedList
  attr_reader :head

  def initialize(head = nil)
    @head = head
  end

  def append(data)
    if @head.nil?
      @head = Node.new(data)
    else
      @head.next_node
    end
    p @head.data
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
