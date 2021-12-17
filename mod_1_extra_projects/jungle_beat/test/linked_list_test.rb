require 'minitest/autorun'
require 'minitest/pride'
require './lib/linked_list'
require './lib/node'

class LinkedListTest < Minitest::Test

  def setup
    @linked_list = LinkedList.new
  end

  def test_it_exists_and_has_attributes
    assert_instance_of LinkedList, @linked_list
    assert_nil @linked_list.head

    @node_1 = @linked_list.append("plop")

    assert_instance_of LinkedList::Node, @node_1
    assert_equal "plop", @node_1.data
    assert_nil @node_1.next_node

    @node_2 = @linked_list.append("ping")

    assert_equal "plop", @node_1.data
    assert_equal "ping", @node_2.data
    assert_instance_of LinkedList::Node, @linked_list.head
    assert_equal "plop", @linked_list.head.data
    assert_equal LinkedList::Node, @linked_list.head.next_node.class
    assert_equal "ping", @linked_list.head.next_node.data
    assert_nil @linked_list.head.next_node.next_node
  end
end