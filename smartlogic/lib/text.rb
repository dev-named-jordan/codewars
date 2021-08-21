require 'CSV'
require_relative './person'

class Text

  def initialize
  end

  def message_to_text(space, pipe, comma)
    all_people = []
    message = File.open(comma, "r")
    message.read.each_line do |row|
      data = row.split(", ")
      p = Person.new(
                {
                  last_name: data[0],
                  first_name: data[1],
                  gender: data[2],
                  dob: data[4].strip,
                  fav_color: data[3]
                }
              )
              all_people.append(p)
    end
    message.close
    message = File.open(space, "r")
    message.read.each_line do |row|
      data = row.split(" ")
      p = Person.new(
                {
                  last_name: data[0],
                  first_name: data[1],
                  gender: "Female",
                  dob: data[4].gsub("-", "/"),
                  fav_color: data[5]
                }
              )
              all_people.append(p)
    end
    message.close
    message = File.open(pipe, "r")
    message.read.each_line do |row|
      data = row.split(" | ")
      p = Person.new(
                {
                  last_name: data[0],
                  first_name: data[1],
                  gender: "Male",
                  dob: data[5].gsub("-", "/").strip,
                  fav_color: data[4]
                }
              )
              all_people.append(p)
    end
    message.close

    def sorted_by_gender(people)
      group = people.sort_by do |person|
        [person.gender, person.last_name]
      end
    end

    def sorted_by_dob(people)
      group = people.sort_by do |person|
        [person.dob[-4..-1], person.last_name]
      end
    end

    def sorted_by_last_name(people)
      group = people.sort_by do |person|
        person.last_name
      end
      group.reverse
    end

    one = sorted_by_gender(all_people)
    two = sorted_by_dob(all_people)
    three = sorted_by_last_name(all_people)
    output = "output.csv"
    arr = []

    CSV.open(output, 'w') do |csv|
      csv << ["output_1:"]
      one.each do |o|
        csv << [o.last_name, o.first_name, o.gender, o.dob, o.fav_color]
        "\n"
      end
      csv << ["output_2:"]
      two.each do |o|
        csv << [o.last_name, o.first_name, o.gender, o.dob, o.fav_color]
        "\n"
      end
      csv << ["output_3:"]
      three.each do |o|
        csv << [o.last_name, o.first_name, o.gender, o.dob, o.fav_color]
        "\n"
      end
    end
  end
end
