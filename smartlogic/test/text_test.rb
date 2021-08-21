require './lib/text'
require './lib/person'
require 'minitest/autorun'
require 'minitest/pride'

class MessagableTest < Minitest::Test
  def setup
    @text = Text.new
    @space = File.new("./space.txt")
    @pipe = File.new("./pipe.txt")
    @comma = File.new("./comma.txt")
  end

  def test_it_exists
    assert_instance_of Text, @text
  end

  def test_comma_message_to_text
    assert_instance_of Array, @text.message_to_text(@space, @pipe, @comma)
  end
end
