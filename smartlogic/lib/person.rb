class Person
  attr_reader :last_name, :first_name, :gender, :dob, :fav_color

  def initialize(data)
    @last_name = data[:last_name]
    @first_name = data[:first_name]
    @gender = data[:gender]
    @dob = data[:dob]
    @fav_color = data[:fav_color]
  end
end
