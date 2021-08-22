require 'minitest/autorun'
require 'minitest/pride'
require './lib/node'
require "./lib/linked_list"

class LinkedListTest < Minitest::Test

  def setup
    @list = LinkedList.new
  end

  def test_it_exists_and_has_attributes
    assert_nil @list.head
    assert_equal "doop", @list.append("doop")
    assert_equal "doop", @list.head.data
    assert_nil @list.head.next_node
    require "pry"; binding.pry
    assert_equal 1, @list.count
    assert_equal "doop", @list.to_string
  end
end



# > list = LinkedList.new
# => <LinkedList head=nil #45678904567>
# > list.head
# => nil
# > list.append("doop")
# => "doop"
# > list
# => <LinkedList head=<Node data="doop" next_node=nil #5678904567890> #45678904567>
# > list.head.next_node
# => nil
# > list.count
# => 1
# > list.to_string
# => "doop"
