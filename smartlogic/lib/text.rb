require 'CSV'

class Text

  def initialize
  end

  def message_to_text(filename)
    message = File.open(filename, "r+").read
    if filename == "space.txt"
      message = ("LastName FirstName MiddleInitial Gender DateOfBirth FavoriteColor\n") + message
      message = message.gsub(" ", ", ")
      require "pry"; binding.pry
      parsed_space = CSV.open(message, :headers => true) do |row|
        require "pry"; binding.pry
        last_name = row["LastName"]
        first_name = row["FirstName"]
        gender = row["Gender"]
        dob = row["DateOfBirth"]
        fav_color = row["FavoriteColor"]
      end
      File.open(filename, "r+").close
    end
    # if filename == "pipe.txt"
    #   message = ("LastName | FirstName | MiddleInitial | Gender | FavoriteColor | DateOfBirth\n") + message
    #   message = message.gsub(" | ", ", ")
    #   parsed_pipe = CSV.open(message, :headers => true) do |row|
    #     last_name = row["LastName"]
    #     first_name = row["FirstName"]
    #     gender = row["Gender"]
    #     dob = row["DateOfBirth"]
    #     fav_color = row["FavoriteColor"]
    #   end
    #   File.open(filename, "r+").close
    # end
    # if filename == "comma.txt"
    #   message = ("LastName, FirstName, Gender, FavoriteColor, DateOfBirth\n") + message
    #   message
    #   parsed_comma = CSV.open(message, :headers => true) do |row|
    #     last_name = row["LastName"]
    #     first_name = row["FirstName"]
    #     gender = row["Gender"]
    #     dob = row["DateOfBirth"]
    #     fav_color = row["FavoriteColor"]
    #   end
    #   File.open(filename, "r+").close
    # end
    p parsed_space
    # p parsed_pipe
    # p parsed_comma
  end
end
