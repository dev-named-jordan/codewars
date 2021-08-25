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
  letters = []
  numbers = []
  if (foo.last.to_i == 0) && (foo.last != "0")
    foo.push("1")
  elsif foo.last == "0"
    foo[-1] = "1"
  elsif
    foo.each do |variable|
      letters << variable if ((variable.to_i == 0) && (variable != "0"))
      numbers << variable if ((variable.to_i > 0) || (variable == "0"))
    end
    if numbers.include?("9") && numbers.include?("0")
      numbers.shift
    end
    zeros = numbers.map(&:to_i).grep(0)
    foo = letters << zeros << (numbers.join.to_i + 1)
  end
  foo.join
end

# def increment_string(input)
#   input.sub(/\d*$/) { |n| n.empty? ? 1 : n.succ }
# end

# def increment_string(input)
  # input[/\d\z/] ? input.sub(/(\d+)\z/) { $1.next } : input + '1'
# end

# def increment_string(input)
#   num = input[/\d+$/]&.next
#   num ? input.sub(/\d+$/, num) : input + "1"
# end
#
# def increment_string(input)
#   letters = input.scan(/[a-z]/i).join
#   nums = input.scan(/(\d+)\Z/)
#   return (input + '1').strip if nums == []
#   nums = nums.flatten[0].chars
#   count = nums.size
#   next_num = nums.join.to_i.succ
#   next_num_string = format("%0#{count}d", next_num)
#   (letters + next_num_string).strip
# end
#
# def increment_string(input)
#   input.gsub(/\d+/) { |match| match.succ } if Integer(input.chars.last) rescue input << "1"
# end
#
# def increment_string(str)
#   #your code here
#   number = str[/\d+$/]
#   number_length = number ? number.length : 0
#   string_without_numbers = number ? str.delete!(number) : str
#   string_without_numbers + "%0#{number_length}d" % (number.to_i + 1)
# end
#
# def increment_string(input)
#   return '1' if input == ''
#   if input[-1].match?(/\d/)
#     letters, digits = input.chars.partition { |char| char.match?(/[a-z]/i) }
#     letters.join + digits.join.next
#   else
#     "#{input}1"
#   end
# end

p increment_string("foo")# "foo1"
p increment_string("foobar001")# "foobar002"
p increment_string("foobar00999")# "foobar01000"
p increment_string("foobar1")# "foobar2"
p increment_string("foobar00")# "foobar01"
p increment_string("foobar99")# "foobar100"
p increment_string("")# "1"
