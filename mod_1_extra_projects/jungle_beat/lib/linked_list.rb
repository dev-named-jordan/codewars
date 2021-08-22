class LinkedList
  attr_reader :head

  def initialize(head = nil)
    @head = head
  end

  def append(data)
    require "pry"; binding.pry
    @head = @head.push(data)
  end

  def count(data)
    @head.count
  end

  def to_string(data)
    data.char
  end
end
