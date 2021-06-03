# You have a positive number n consisting of digits. You can do at most one operation: Choosing the index of a digit in the number, remove this digit at that index and insert it back to another or at the same place in the number in order to find the smallest number you can get.
#
# Task:
# Return an array or a tuple or a string depending on the language (see "Sample Tests") with
#
# the smallest number you got
# the index i of the digit d you took, i as small as possible
# the index j (as small as possible) where you insert this digit d to have the smallest number.
# Examples:
# smallest(261235) --> [126235, 2, 0] or (126235, 2, 0) or "126235, 2, 0"
# 126235 is the smallest number gotten by taking 1 at index 2 and putting it at index 0
#
# smallest(209917) --> [29917, 0, 1] or ...
#
# [29917, 1, 0] could be a solution too but index `i` in [29917, 1, 0] is greater than
# index `i` in [29917, 0, 1].
# 29917 is the smallest number gotten by taking 2 at index 0 and putting it at index 1 which gave 029917 which is the number 29917.
#
# smallest(1000000) --> [1, 0, 6] or ...
# Note
# Have a look at "Sample Tests" to see the input and output in each language

@array_of_integer_index_hashes = []
@array_of_integers = []
@copy_array_of_integers = []

def smallest(int)
  int.digits.reverse.each.with_index do |integer, index|
    @array_of_integer_index_hashes << { integer => index }
    @array_of_integers << integer
    @copy_array_of_integers << integer
  end
  @min = @array_of_integers.min
  if @min == @array_of_integers.first
    @array_of_integers.delete(@min)
    @min = @array_of_integers.min
    array = []
    array << @min
    @array_of_integers.delete(@min)
    @new_low_number = @array_of_integers.unshift(array.first).join.to_i
    @new_low_number = @array_of_integers.unshift(@copy_array_of_integers.min).join.to_i
    @array_of_integer_index_hashes.map do |hash|
      if hash.keys.first == @min
        @index_taken_from = hash.values.first
      end
    end
    return [@new_low_number, @index_taken_from, @min.to_i]
  end
  @array_of_integer_index_hashes.map do |hash|
    if hash.keys.first == @min
      @index_taken_from = hash.values.first
    end
  end
  array = []
  array << @min
  @array_of_integers.delete(@min)
  @new_low_number = @array_of_integers.unshift(array.first).join.to_i
  [@new_low_number, @index_taken_from, @min.to_i]
end

#going to need a type of guard clause for 0's in the argument, and lowest number at the 0 index already
#number you have, number you took, index you took it from

# p smallest(261235)# [126235, 2, 0])
# p smallest(209917)# [29917, 0, 1])
p smallest(285365)# [238565, 3, 1])
# p smallest(269045)# [26945, 3, 0])
# p smallest(296837)# [239687, 4, 1])

# num = int.to_s.gsub(@array_of_integers.first.to_s, @array_of_integers.min.to_s)
# @new_low_number = @new_low.gsub(@array_of_integers[@index_taken_from], @array_of_integers.first.to_s)
# @array_of_integers[@index_taken_from] = @array_of_integers.first.to_i
# @array_of_integers[0] = @min.to_i
# @new_low_number = @array_of_integers.join.to_i
# require "pry"; binding.pry

# swap(@array_of_integers.first, @array_of_integers.min)
# def swap(a,b)
#   # require "pry"; binding.pry
#   a,b = b,a
#   return a,b
# end
# @array_of_integers.first.to_s, @array_of_integers.min.to_s = @array_of_integers.min.to_s, @array_of_integers.first.to_s


# p swap(@array_of_integers.first.to_s, @array_of_integers.min.to_s)


# int.to_s.gsub(array_of_integers.first.to_s, array_of_integers.min.to_s)
#
