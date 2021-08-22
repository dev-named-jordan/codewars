class LinkedList
  attr_reader :head

  def initialize(head = nil)
    @head = head
  end

  def append(data)
    @head = Node.new(data)
    p @head.data
  end

  def count
    @head.count
  end

  def to_string
    data.char
  end
end
