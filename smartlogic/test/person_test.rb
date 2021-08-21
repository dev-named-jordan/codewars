require './lib/text'
require './lib/person'
require 'minitest/autorun'
require 'minitest/pride'

class PersonTest < Minitest::Test
  def setup
    @text = Text.new
    @space = File.new("./space.txt")
    @pipe = File.new("./pipe.txt")
    @comma = File.new("./comma.txt")
    @person = Person.new(
      {
        last_name: "Smith",
        first_name: "Bill",
        gender: "Male",
        dob: "05/28/1986",
        fav_color: "Cyan"
      }
    )
  end

  def test_it_exists_and_has_attributes
    assert_instance_of Person, @person
    assert_equal "Smith", @person.last_name
    assert_equal "Bill", @person.first_name
    assert_equal "Male", @person.gender
    assert_equal "05/28/1986", @person.dob
    assert_equal "Cyan", @person.fav_color
  end
end
