# Complete the method which returns the number which is most frequent in the given input array. If there is a tie for most frequent number, return the largest number among them.
#
# Note: no empty arrays will be given.
#
# Examples
# [12, 10, 8, 12, 7, 6, 4, 10, 12]              -->  12
# [12, 10, 8, 12, 7, 6, 4, 10, 12, 10]          -->  12
# [12, 10, 8, 8, 3, 3, 3, 3, 2, 4, 10, 12, 10]  -->   3
#
# def highest_rank(arr)
#   arr.max_by { |number| arr.count(number) }
# end

# def highest_rank(arr)
#   a = arr.sort_by do |number|
#     [arr.count(number), arr.max(number)]
#   end
#   require "pry"; binding.pry
# end
#
p highest_rank([12, 10, 8, 12, 7, 6, 4, 10, 12])# 12
p highest_rank([12, 10, 8, 12, 7, 6, 4, 10, 12, 10])# 12
p highest_rank([12, 10, 8, 8, 3, 3, 3, 3, 2, 4, 10, 12, 10])# 3)
