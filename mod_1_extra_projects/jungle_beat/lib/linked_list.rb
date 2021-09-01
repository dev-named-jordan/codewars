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
    require "pry"; binding.pry
    @head.size
  end

  def to_string
    data.char
  end
end
