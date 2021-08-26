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
  number_collection = []
  num_array = num.digits.reverse
  # num_array = num.to_s.chars
  num_array.map do |number|
    if number.odd?
      number = "-" + "#{number}" + "-"
      number_collection << number
    else
      number_collection << number.to_s
    end
  end
  number_collection.flatten.join
  # num.gsub(/["13579"](.)/) {$1.push("0000")}
  # num.gsub(/[02468](.)/) {"#{$1.gsub($1, "-#{$1}")}"}
end

#basic

p dashatize(274)# "2-7-4"
p dashatize(5311)# ,"5-3-1-1"
# p dashatize(86320)# "86-3-20"
# p dashatize(974302)# "9-7-4-3-02"

#weird

# p dashatize(nil)# "nil"
# p dashatize(0)# "0"
# p dashatize(-1)# "1"
# p dashatize(-28369)# "28-3-6-9"
