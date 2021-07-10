# def recursive_add(array)
#   if array.one?
#     return array.last
#   else
#     # array[0] += array.shift
#     array[1] += array.first
#     array.delete(array.first)
#     recursive_add(array)
#   end
# end

#
# # p recursive_add(arr_2)
# arr_2 = [1,2,3,4,5]

def recursive_add(array, sum = 0)
  if array.length == 0
    sum
  else
    sum += array.shift
    recursive_add(array, sum)
  end
end

p recursive_add(arr_2)

# arr_1 = [1, 2, 3, 4]
# def sum(array)
#   return 0 unless array.length > 0
#   return array.shift + sum(array)
# end
# puts sum(arr_1)







sample_array = [1, 1, 1, 1]

def recursive_add(array, sum = 0)
  if array.length == 0
    sum
  else
    sum += array.shift
    recursive_add(array, sum)
  end
end

p recursive_add(sample_array)
