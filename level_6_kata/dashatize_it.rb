# Given a variable n,
#
# If n is an integer, Return a string with dash'-'marks before and after each odd integer, but do not begin or end the string with a dash mark. If n is negative, then the negative sign should be removed.
#
# If n is not an integer, return an empty value.
#
# Ex:
#
# dashatize(274) -> '2-7-4'
# dashatize(6815) -> '68-1-5'

def dashatize(num)
  if num.nil?
    return "nil"
  end
  number_collection = []
  no_negative_numbers = num.to_s.delete("-").to_i
  num_array = no_negative_numbers.digits.reverse
  num_array.map.with_index do |number, index|
    if number.odd? && number_collection.empty?
      number = "#{number}" + "-"
      number_collection << number
    elsif number.odd?
      if number_collection.last[-1] == "-"
        number = "#{number}" + "-"
        number_collection << number
      else
        number = "-" + "#{number}" + "-"
        number_collection << number
      end
    else
      number_collection << number.to_s
    end
  end
  number_collection = number_collection.flatten.join.strip
  if number_collection[-1] == "-"
    number_collection[-1] = ""
  end
  number_collection
end

# basic

p dashatize(274)# "2-7-4"
p dashatize(5311)# ,"5-3-1-1"
p dashatize(86320)# "86-3-20"
p dashatize(974302)# "9-7-4-3-02"

#weird

p dashatize(nil)# "nil"
p dashatize(0)# "0"
p dashatize(-1)# "1"
p dashatize(-28369)# "28-3-6-9"
