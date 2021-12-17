require 'minitest/autorun'
require 'minitest/pride'
require './lib/linked_list'
require './lib/node'

class LinkedListTest < Minitest::Test

  def setup
    @linked_list = LinkedList.new
    require "pry"; binding.pry
     self.head = Node.new("plop", nil)
  end

  def test_it_exists_and_has_attributes
    assert_instance_of LinkedList, @linked_list
    assert_equal "plop", @node.data
    assert_nil @node.next_node
  end
end