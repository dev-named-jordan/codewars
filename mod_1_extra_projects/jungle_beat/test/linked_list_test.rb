require 'minitest/autorun'
require 'minitest/pride'
require './lib/linked_list'
require './lib/node'

class LinkedListTest < Minitest::Test
  
  def setup
    @linked_list = LinkedList.new
    assert_equal 0, @linked_list.count
    assert_instance_of LinkedList, @linked_list
    assert_nil @linked_list.head
    assert_nil @linked_list.to_string
    @node_1 = @linked_list.append("plop")
    assert_equal "plop", @linked_list.to_string
    assert_instance_of LinkedList::Node, @linked_list.head
    assert_instance_of LinkedList::Node, @node_1
    assert_equal "plop", @node_1.data
    assert_equal 1, @linked_list.count
    assert_nil @node_1.next_node
    @node_2 = @linked_list.append("ping")
    assert_equal "plop ping", @linked_list.to_string
    assert_equal "ping", @linked_list.head.next_node.data
    assert_equal 2, @linked_list.count
    assert_nil @node_2.next_node
    assert_nil @linked_list.head.next_node.next_node
    @node_3 = @linked_list.append("doop")
    assert_equal "plop ping doop", @linked_list.to_string
    assert_equal 3, @linked_list.count
    assert_equal "plop", @linked_list.head.data
  end
  
  def test_it_has_appened_nodes_in_setup
    assert_instance_of LinkedList::Node, @linked_list.head
    assert_equal LinkedList::Node, @linked_list.head.next_node.class
    assert_instance_of LinkedList::Node, @node_1
    assert_instance_of LinkedList::Node, @node_2
    assert_instance_of LinkedList::Node, @node_1.next_node
    assert_equal "plop", @node_1.data
    assert_equal "ping", @node_2.data
    assert_equal "doop", @node_3.data
    assert_equal "plop", @linked_list.head.data
    assert_equal "ping", @linked_list.head.next_node.data
    assert_equal @node_2, @node_1.next_node
    assert_equal 3, @linked_list.count
    assert_instance_of LinkedList::Node, @linked_list.head
    assert_equal LinkedList::Node, @linked_list.head.next_node.class
    assert_equal LinkedList::Node, @linked_list.head.next_node.next_node.class
    assert_instance_of LinkedList::Node, @node_1
    assert_instance_of LinkedList::Node, @node_2
    assert_instance_of LinkedList::Node, @node_3
    assert_instance_of LinkedList::Node, @node_1.next_node
    assert_instance_of LinkedList::Node, @node_1.next_node.next_node
    assert_equal "plop", @node_1.data
    assert_equal "ping", @node_2.data
    assert_equal "doop", @node_3.data
    assert_equal "plop", @linked_list.head.data
    assert_equal "ping", @linked_list.head.next_node.data
    assert_equal "doop", @linked_list.head.next_node.next_node.data
    assert_equal @node_2, @node_1.next_node
    assert_equal @node_3, @node_1.next_node.next_node
    assert_nil @node_2.next_node.next_node
    assert_nil @linked_list.head.next_node.next_node.next_node
  end

  def test_it_can_insert_count_to_string_and_prepend
    assert_equal "plop ping doop", @linked_list.to_string
    assert_equal "dop", @linked_list.prepend("dop")
    assert_equal "dop plop ping doop", @linked_list.to_string
    assert_equal 4, @linked_list.count
    assert_equal "dom", @linked_list.insert(0, "dom")
    assert_equal "dom dop plop ping doop", @linked_list.to_string  
    assert_equal "woo", @linked_list.insert(1, "woo")
    assert_equal "dom woo dop plop ping doop", @linked_list.to_string  
    assert_equal 6, @linked_list.count
    assert_equal "poo", @linked_list.insert(4, "poo")
    assert_equal "dom woo dop plop poo ping doop", @linked_list.to_string  
  end

  def test_it_can_find_node_pop_includes
    assert_equal "plop ping doop", @linked_list.to_string
    assert_equal "dop", @linked_list.prepend("dop")
    assert_equal "dom", @linked_list.insert(0, "dom")
    assert_equal "woo", @linked_list.insert(1, "woo")
    assert_equal "poo", @linked_list.insert(4, "poo")
    assert_equal "dom woo dop plop poo ping doop", @linked_list.to_string  
    assert_nil @linked_list.find(2, 0)
    assert_equal "dop", @linked_list.find(2, 1)
    assert_equal "woo dop plop", @linked_list.find(1, 3)
    assert_equal true, @linked_list.includes?("dom")
    assert_equal false, @linked_list.includes?("dep")
    assert_equal true, @linked_list.includes?("poo")
    assert_equal "doop", @linked_list.pop
    assert_equal "dom woo dop plop poo ping", @linked_list.to_string  
    assert_equal "ping", @linked_list.pop
    assert_equal "dom woo dop plop poo", @linked_list.to_string  
  end
end