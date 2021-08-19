require 'minitest/autorun'
require 'minitest/pride'
require './lib/node'

class ReunionTest < Minitest::Test

  def setup
    @node = Node.new("plop")
  end

  def test_it_exists_and_has_attributes
    assert_instance_of Node, @node
    assert_equal "plop", @node.data
    assert_nil @node.next_node
  end
end
