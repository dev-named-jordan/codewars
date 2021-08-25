# Your job is to write a function which increments a string, to create a new string.
#
# If the string already ends with a number, the number should be incremented by 1.
# If the string does not end with a number. the number 1 should be appended to the new string.
# Examples:
#
# foo -> foo1
#
# foobar23 -> foobar24
#
# foo0042 -> foo0043
#
# foo9 -> foo10
#
# foo099 -> foo100
#
# Attention: If the number has leading zeros the amount of digits should be considered.
#
def increment_string(input)
  foo = input.chars
  letter = []
  number = []
  if (!foo.last.to_i.is_a?(Integer)) && (foo.last != "0")
    foo.push("1")
  elsif foo.last == "0"
    foo.gsub("0", "1")
  elsif
    foo.each do |variable|
      letter << variable if ((variable.to_i == 0) && (variable != "0"))
      number << variable if ((variable.to_i > 0) || (variable == "0"))
    end
    require "pry"; binding.pry
    
  end
  foo.join
end

# p increment_string("foo")# "foo1"
p increment_string("foobar001")# "foobar002"
# p increment_string("foobar1")# "foobar2"
# p increment_string("foobar00")# "foobar01"
# p increment_string("foobar99")# "foobar100"
# p increment_string("")# "1"
