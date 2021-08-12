# Bob is preparing to pass IQ test. The most frequent task in this test is to find out which one of the given numbers differs from the others. Bob observed that one number usually differs from the others in evenness. Help Bob — to check his answers, he needs a program that among the given numbers finds one that is different in evenness, and return a position of this number.
#
# ! Keep in mind that your task is to help Bob solve a real IQ test, which means indexes of the elements start from 1 (not 0)
#
# Examples:
# iq_test("2 4 7 8 10") => 3 # Third number is odd, while the rest of the numbers are even
#
# iq_test("1 2 1 1") => 2 # Second number is even, while the rest of the numbers are odd

# The with_index method takes an optional parameter to offset the starting index. each_with_index does the same thing, but has no optional starting index.
#
# For example:
#
# [:foo, :bar, :baz].each.with_index(2) do |value, index|
#     puts "#{index}: #{value}"
# end
#
# [:foo, :bar, :baz].each_with_index do |value, index|
#     puts "#{index}: #{value}"
# end
# Outputs:
#
# 2: foo
# 3: bar
# 4: baz
#
# 0: foo
# 1: bar
# 2: baz

# def iq_test(numbers)
#   cleaned = numbers.split(" ")
#   iq_hash = cleaned.each.with_index(1).to_h
#   odd = []
#   even = []
#   iq_hash.each do |number, index|
#     if number.to_i.odd?
#       odd << number
#     else
#       even << number
#     end
#   end
#   if odd.one?
#     iq_hash[odd.first]
#   elsif even.one?
#     iq_hash[even.first]
#   end
# end

#Additional passing methods from codewars.

# def iq_test(numbers)
#   nums = numbers.split.map(&:to_i).map(&:even?)
#   nums.count(true) > 1 ? nums.index(false) + 1 : nums.index(true) + 1
# end
#
# def iq_test(numbers)
#   ar = numbers.split.map(&:to_i)
#   ar.index(ar.partition(&:even?).find(&:one?).first) + 1
# end
#
# def iq_test(numbers)
#   sieve = numbers.split.map { |n| n.to_i.even? }
#   sieve.index(sieve.count(true) < 2).succ
# end
#
# def iq_test(numbers)
#   (i = numbers.split.map(&:to_i)).index(i.partition(&:odd?).find(&:one?).first)+1
# end

# p iq_test("2 4 7 8 10")#3
# p iq_test("1 2 2")# 1
# p iq_test("1 7 9 4 5 3")# 4
# p iq_test("1 2 3 5 7 9")# 2
# p iq_test("1 3 5 7 8 9")# 5
