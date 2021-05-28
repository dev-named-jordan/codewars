# You live in the city of Cartesia where all roads are laid out in a perfect grid. You arrived ten minutes too early to an appointment, so you decided to take the opportunity to go for a short walk. The city provides its citizens with a Walk Generating App on their phones -- everytime you press the button it sends you an array of one-letter strings representing directions to walk (eg. ['n', 's', 'w', 'e']). You always walk only a single block for each letter (direction) and you know it takes you one minute to traverse one city block, so create a function that will return true if the walk the app gives you will take you exactly ten minutes (you don't want to be early or late!) and will, of course, return you to your starting point. Return false otherwise.
#
# Note: you will always receive a valid array containing a random assortment of direction letters ('n', 's', 'e', or 'w' only). It will never give you an empty array (that's not a walk, that's standing still!).



# def is_valid_walk(walk)
#
#   north = 0
#   east = 0
#   south = 0
#   west = 0
#   counter = 0
#
#   walk.each do |wlk|
#     counter += 1
#     if wlk == 'n'
#       north += 1
#     elsif wlk == 'e'
#       east += 1
#     elsif wlk == 's'
#       south += 1
#     elsif wlk == 'w'
#       west += 1
#     end
#   end
#   if counter != 10 || !(north == south && east == west)
#     p false
#   else
#     p true
#   end
# end
#
# is_valid_walk(['n','s','n','s','n','s','n','s','n','s']) #true
# is_valid_walk(['w','e','w','e','w','e','w','e','w','e','w','e']) #false
# is_valid_walk(['w']) #false
# is_valid_walk(['n','n','n','s','n','s','n','s','n','s']) #false

# As a part of this Kata, you need to create a function that when provided with a triplet, returns the index of the numerical element that lies between the other two elements.
#
# The input to the function will be an array of three distinct numbers (Haskell: a tuple).
#
# For example:
#
# gimme([2, 3, 1]) => 0
# 2 is the number that fits between 1 and 3 and the index of 2 in the input array is 0.
#
# Another example (just to make sure it is clear):
#
# gimme([5, 10, 14]) => 1
# 10 is the number that fits between 5 and 14 and the index of 10 in the input array is 1.

# def gimme(input_array)
#   middle = input_array.sort[1]
#   input_array.each_with_index do |input, index|
#     # require "pry"; binding.pry
#     p index if input == middle
#   end
# end
#
#   gimme([2, 3, 1]) #0)
#   gimme([5, 10, 14]) #1)
#   gimme([1, 3, 4]) #1)
#   gimme([15, 10, 14]) #2)
#   gimme([-0.410, -23, 4]) #0)
#   gimme([-15, -10, 14]) #1)


# You will be given an array of numbers. You have to sort the odd numbers in ascending order while leaving the even numbers at their original positions.
#
# Examples
# [7, 1]  =>  [1, 7]
# [5, 8, 6, 3, 4]  =>  [3, 8, 6, 5, 4]
# [9, 8, 7, 6, 5, 4, 3, 2, 1, 0]  =>  [1, 8, 3, 6, 5, 4, 7, 2, 9, 0]
#
#
# def sort_array(source_array)
#   odds = []
#   counter = 0
#   final_array = []
#   source_array.each do |element|
#     odds << element if element.odd?
#   end
#   source_array.map do |element|
#     if element.odd?
#       element = odds.sort[counter]
#       counter += 1
#     end
#     final_array << element
#   end
#   p final_array
# end
#
# def sort_array(source_array)
#   odds = source_array.select(&:odd?).sort
#   source_array.map { |n| n.even? ? n : odds.shift }
# end
#
# sort_array([5, 3, 2, 8, 1, 4, 11])# [1, 3, 2, 8, 5, 4, 11]
# sort_array([2, 22, 37, 11, 4, 1, 5, 0])# [2, 22, 1, 5, 4, 11, 37, 0]
# sort_array([1, 111, 11, 11, 2, 1, 5, 0])#[1, 1, 5, 11, 2, 11, 111, 0]
# sort_array([1, 2, 3, 4, 5, 6, 7, 8, 9, 0])#[1, 2, 3, 4, 5, 6, 7, 8, 9, 0]
# sort_array([0, 1, 2, 3, 4, 5, 6, 7, 8, 9])#[0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
# sort_array([0, 1, 2, 3, 4, 9, 8, 7, 6, 5])#[0, 1, 2, 3, 4, 5, 8, 7, 6, 9]
# sort_array([])# []
# sort_array([19])# [19]
# sort_array([2])# [2]
# sort_array([7,5])# [5,7]

# Given: an array containing hashes of names
#
# Return: a string formatted as a list of names separated by commas except for the last two names, which should be separated by an ampersand.
#
# Example:
#
# list([ {name: 'Bart'}, {name: 'Lisa'}, {name: 'Maggie'} ])
# # returns 'Bart, Lisa & Maggie'
#
# list([ {name: 'Bart'}, {name: 'Lisa'} ])
# # returns 'Bart & Lisa'
#
# list([ {name: 'Bart'} ])
# # returns 'Bart'
#
# list([])
# # returns ''
# Note: all the hashes are pre-validated and will only contain A-Z, a-z, '-' and '.'.

# def list(names)
#   name_array = []
#   names.map do |name|
#     name_array << name[:name]
#   end
#   joined = name_array.join(", ")
#   p joined.reverse.sub(',', '& ').reverse
# end

# def list(names)
#   name_name = names.map do |name|
#     name[:name]
#   end
#   joined = name_name.join(", ")
#   p joined.reverse.sub(',', '& ').reverse
# end
#
# list([{name: 'Bart'},{name: 'Lisa'},{name: 'Maggie'},{name: 'Homer'},{name: 'Marge'}]) # 'Bart, Lisa, Maggie, Homer & Marge',"Must work with many names")
# list([{name: 'Bart'},{name: 'Lisa'}]) # 'Bart & Lisa',"Must work with two names")
# list([{name: 'Bart'}]) # 'Bart', "Wrong output for a single name")
#



# Given an array of integers, find the one that appears an odd number of times.
#
# There will always be only one integer that appears an odd number of times.

# def find_it(seq)
#   sort = seq.group_by do |s|
#     s
#   end
#   sort.select do |key, value|
#     if value.count.odd?
#       p key
#     end
#   end
# end
#
#
# find_it([20,1,-1,2,-2,3,3,5,5,1,2,4,20,4,-1,-2,5]) # 5)
# find_it([1,1,2,-2,5,2,4,4,-1,-2,5]) # -1)
# find_it([20,1,1,2,2,3,3,5,5,4,20,4,5]) # 5)
# find_it([10]) # 10)
# find_it([1,1,1,1,1,1,10,1,1,1,1]) # 10)


# Given a list of integers and a single sum value, return the first two values (parse from the left please) in order of appearance that add up to form the sum.
#
# sum_pairs([11, 3, 7, 5],         10)
# #              ^--^      3 + 7 = 10
# == [3, 7]
#
# sum_pairs([4, 3, 2, 3, 4],         6)
# #          ^-----^         4 + 2 = 6, indices: 0, 2 *
# #             ^-----^      3 + 3 = 6, indices: 1, 3
# #                ^-----^   2 + 4 = 6, indices: 2, 4
# #  * entire pair is earlier, and therefore is the correct answer
# == [4, 2]
#
# sum_pairs([0, 0, -2, 3], 2)
# #  there are no pairs of values that can be added to produce 2.
# == None/nil/undefined (Based on the language)
#
# sum_pairs([10, 5, 2, 3, 7, 5],         10)
# #              ^-----------^   5 + 5 = 10, indices: 1, 5
# #                    ^--^      3 + 7 = 10, indices: 3, 4 *
# #  * entire pair is earlier, and therefore is the correct answer
# == [3, 7]
# Negative numbers and duplicate numbers can and will appear.
#
# NOTE: There will also be lists tested of lengths upwards of 10,000,000 elements. Be sure your code doesn't time out.


# for adjacent pairs
# def sum_pairs(ints, s)
#   ints.each_cons(2) do |int|
#     # require "pry"; binding.pry
#     if int.sum == s
#       p int
#     end
#   end
# end

# def sum_pairs(ints, s)
#   combo_array = ints.combination(2)
#   final_array = []
#   combo_array.map do |int|
#     # require "pry"; binding.pry
#     if int.sum == s
#       final_array << int
#     end
#   end
#   if final_array.empty?
#     p nil
#   else
#     p final_array[0]
#   end
# end
#
# l1 = [1, 4, 8, 7, 3, 15]
# l2 = [1, -2, 3, 0, -6, 1]
# l3 = [20, -13, 40]
# l4 = [1, 2, 3, 4, 1, 0]
# l5 = [10, 5, 2, 3, 7, 5]
# l6 = [4, -2, 3, 3, 4]
# l7 = [0, 2, 0]
# l8 = [5, 9, 13, -3]
#
#
# sum_pairs(l1, 8) # == [1, 7] # "Basic: ["+l1.join(", ")+"] should return [1, 7] for sum = 8")
# sum_pairs(l2, -6) # == [0, -6] # "Negatives: ["+l2.join(", ")+"] should return [0, -6] for sum = -6")
# sum_pairs(l3, -7) # == nil # "No Match: ["+l3.join(", ")+"] should return nil for sum = -7")
# sum_pairs(l4, 2) # == [1, 1] # "First Match From Left: ["+l4.join(", ")+"] should return [1, 1] for sum = 2 ")
# sum_pairs(l5, 10) # == [3, 7] # "First Match From Left REDUX!: ["+l5.join(", ")+"] should return [3, 7] for sum = 10 ")
# sum_pairs(l6, 8) # == [4, 4] # "Duplicates: ["+l6.join(", ")+"] should return [4, 4] for sum = 8")
# sum_pairs(l7, 0) # == [0, 0] # "Zeroes: ["+l7.join(", ")+"] should return [0, 0] for sum = 0")
# sum_pairs(l8, 10) # == [13, -3] # "Subtraction: ["+l8.join(", ")+"] should return [13, -3] for sum = 10")


# Complete the function that accepts a string parameter, and reverses each word in the string. All spaces in the string should be retained.
#
# Examples
# "This is an example!" ==> "sihT si na !elpmaxe"
# "double  spaces"      ==> "elbuod  secaps"
#
# def reverse_words(str)
#   str_array = str.split(" ")
#   array_reverse = str_array.map do |element|
#     element.reverse
#   end
#   if str.include?("  ")
#     p array_reverse.join("  ")
#   else
#     p array_reverse.join(" ")
#   end
# end
#
#     reverse_words('The quick brown fox jumps over the lazy dog.') # 'ehT kciuq nworb xof spmu revo eht yzal .god')
#     reverse_words('apple') # 'elppa'
#     reverse_words('a b c d') # 'a b c d'
#     reverse_words('double  spaced  words') # 'elbuod  decaps  sdrow'
#
# Welcome.
#
# In this kata you are required to, given a string, replace every letter with its position in the alphabet.
#
# If anything in the text isn't a letter, ignore it and don't return it.
#
# "a" = 1, "b" = 2, etc.
#
# Example
# alphabet_position("The sunset sets at twelve o' clock.")
# Should return "20 8 5 19 21 14 19 5 20 19 5 20 19 1 20 20 23 5 12 22 5 15 3 12 15 3 11" (as a string)

# def alphabet_position(text)
#   clean_text = text.gsub(/[^a-zA-Z]/, '').downcase.chars
#   clean = clean_text.map do |t|
#     t.ord - 96
#   end
#   p clean.join(" ")
# end
#
#     alphabet_position("The sunset sets at twelve o' clock.") # "20 8 5 19 21 14 19 5 20 19 5 20 19 1 20 20 23 5 12 22 5 15 3 12 15 3 11")
#     alphabet_position("-.-'") # "")

# Implement the function unique_in_order which takes as argument a sequence and returns a list of items without any elements with the same value next to each other and preserving the original order of elements.
#
# For example:
#
# unique_in_order('AAAABBBCCDAABBB') == ['A', 'B', 'C', 'D', 'A', 'B']
# unique_in_order('ABBCcAD')         == ['A', 'B', 'C', 'c', 'A', 'D']
# unique_in_order([1,2,2,3,3])       == [1,2,3]

# def unique_in_order(iterable)
#   unique_array = []
#   if iterable.empty?
#     return []
#   end
#   if !iterable.empty?
#     if iterable[0].is_a?(Numeric)
#       iterable_array = iterable.map(&:to_i)
#     elsif iterable.is_a?(Array)
#       iterable_array = iterable
#     elsif iterable.is_a?(String)
#       iterable_array = iterable.split("")
#     end
#   end
#   iterable_array.each do |iteration|
#     next if iteration == unique_array.last
#     unique_array << iteration
#   end
#   p unique_array
# end
#
# unique_in_order('AAAABBBCCDAABBB') # ['A','B','C','D','A','B']

# Deoxyribonucleic acid (DNA) is a chemical found in the nucleus of cells and carries the "instructions" for the development and functioning of living organisms.
#
# If you want to know more http://en.wikipedia.org/wiki/DNA
#
# In DNA strings, symbols "A" and "T" are complements of each other, as "C" and "G". You have function with one side of the DNA (string, except for Haskell); you need to get the other complementary side. DNA strand is never empty or there is no DNA at all (again, except for Haskell).
#
# More similar exercise are found here http://rosalind.info/problems/list-view/ (source)
#
# DNA_strand ("ATTGC") # return "TAACG"
#
# DNA_strand ("GTAT") # return "CATA"
#
# def DNA_strand(dna)
#   sequence = []
#   dna.chars.map do |char|
#     hash = {A: :T,
#       T: :A,
#       C: :G,
#       G: :C
#     }
#     character = hash[:"#{char}"]
#     sequence << character
#   end
#   p sequence.join
# end
#
# # def DNA_strand(dna)
# #   dna.tr("ACTG", "TGAC")
# # end
#
# # def DNA_strand(dna)
# #   dna.gsub(/[ATGC]/, "A" => "T", "T" => "A", "C" => "G", "G" => "C")
# # end
#
# DNA_strand("AAAA")#"TTTT","String AAAA is")
# DNA_strand("ATTGC")#"TAACG","String ATTGC is")
# DNA_strand("GTAT")#"CATA","String GTAT is")


# You need to write p (regex that will validate a password to make sure it meets the following criteria:
#
# At least six characters long
# contains a lowercase letter
# contains an uppercase letter
# contains a number
# Valid passwords will only be alphanumeric characters.

# regex=/[$&+,:;=?@"#|'<>.^*()%!-]"/
# regex="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[^\W_]{6,}$"
#
#
# p (regex=~'fjd3IR9')==0#true)
# p (regex=~'ghdfj32')==0#false)
# p (regex=~'DSJKHD23')==0#false)
# p (regex=~'dsF43')==0#false)
# p (regex=~'4fdg5Fj3')==0#true)
# p (regex=~'DHSJdhjsU')==0#false)
# p (regex=~'fjd3IR9.;')==0#false)
# p (regex=~'fjd3  IR9')==0#false)
# p (regex=~'djI38D55')==0#true)
# p (regex=~'a2.d412')==0#false)
# p (regex=~'JHD5FJ53')==0#false)
# p (regex=~'!fdjn345')==0#false)
# p (regex=~'jfkdfj3j')==0#false)
# p (regex=~'123')==0#false)
# p (regex=~'abc')==0#false)
# p (regex=~'123abcABC')==0#true)
# p (regex=~'ABC123abc')==0#true)
# p (regex=~'Password123')==0#true)

# Your task is to make a function that can take any non-negative integer as an argument and return it with its digits in descending order. Essentially, rearrange the digits to create the highest possible number.
#
# Examples:
# Input: 42145 Output: 54421
#
# Input: 145263 Output: 654321
#
# Input: 123456789 Output: 987654321

# def descending_order(n)
#   p n.digits.max(n.to_s.length + 1).join.to_i
# end

# def descending_order(n)
#   p n.digits.sort.reverse.join.to_i
# end
#
#
# descending_order(0)# 0
# descending_order(1)# 1
# descending_order(123456789)# 987654321
# descending_order(123789456)# 987654321
# descending_order(12337894456)# 98765443321

#
# Once upon a time, on a way through the old wild mountainous west,…
# … a man was given directions to go from one point to another. The directions were "NORTH", "SOUTH", "WEST", "EAST". Clearly "NORTH" and "SOUTH" are opposite, "WEST" and "EAST" too.
#
# Going to one direction and coming back the opposite direction right away is a needless effort. Since this is the wild west, with dreadfull weather and not much water, it's important to save yourself some energy, otherwise you might die of thirst!
#
# How I crossed a mountainous desert the smart way.
# The directions given to the man are, for example, the following (depending on the language):
#
# ["NORTH", "SOUTH", "SOUTH", "EAST", "WEST", "NORTH", "WEST"].
# or
# { "NORTH", "SOUTH", "SOUTH", "EAST", "WEST", "NORTH", "WEST" };
# or
# [North, South, South, East, West, North, West]
# You can immediatly see that going "NORTH" and immediately "SOUTH" is not reasonable, better stay to the same place! So the task is to give to the man a simplified version of the plan. A better plan in this case is simply:
#
# ["WEST"]
# or
# { "WEST" }
# or
# [West]
# Other examples:
# In ["NORTH", "SOUTH", "EAST", "WEST"], the direction "NORTH" + "SOUTH" is going north and coming back right away.
#
# The path becomes ["EAST", "WEST"], now "EAST" and "WEST" annihilate each other, therefore, the final result is [] (nil in Clojure).
#
# In ["NORTH", "EAST", "WEST", "SOUTH", "WEST", "WEST"], "NORTH" and "SOUTH" are not directly opposite but they become directly opposite after the reduction of "EAST" and "WEST" so the whole path is reducible to ["WEST", "WEST"].
#
# Task
# Write a function dirReduc which will take an array of strings and returns an array of strings with the needless directions removed (W<->E or S<->N side by side).
#
# The Haskell version takes a list of directions with data Direction = North | East | West | South.
# The Clojure version returns nil when the path is reduced to nothing.
# The Rust version takes a slice of enum Direction {North, East, West, South}.
# See more examples in "Sample Tests:"
# Notes
# Not all paths can be made simpler. The path ["NORTH", "WEST", "SOUTH", "EAST"] is not reducible. "NORTH" and "WEST", "WEST" and "SOUTH", "SOUTH" and "EAST" are not directly opposite of each other and can't become such. Hence the result path is itself : ["NORTH", "WEST", "SOUTH", "EAST"].
# if you want to translate, please ask before translating.
# FUNDAMENTALS



# def dirReduc(arr)
#   hash = {"NORTH" => "SOUTH",
#           "SOUTH" => "NORTH",
#           "EAST" => "WEST",
#           "WEST" => "EAST"}
#   arr.map do |a|
#     if arr.uniq == arr
#       p arr.uniq
#       break
#     else
#       p [hash[a]] if arr.one?(a)
#     end
#   end
# end
#
# a = ["NORTH", "SOUTH", "SOUTH", "EAST", "WEST", "NORTH", "WEST"]
# dirReduc(a)# ["WEST"]
# u = ["NORTH", "WEST", "SOUTH", "EAST"]
# dirReduc(u)# ["NORTH", "WEST", "SOUTH", "EAST"]

# Polycarpus works as a DJ in the best Berland nightclub, and he often uses dubstep music in his performance. Recently, he has decided to take a couple of old songs and make dubstep remixes from them.
#
# Let's assume that a song consists of some number of words (that don't contain WUB). To make the dubstep remix of this song, Polycarpus inserts a certain number of words "WUB" before the first word of the song (the number may be zero), after the last word (the number may be zero), and between words (at least one between any pair of neighbouring words), and then the boy glues together all the words, including "WUB", in one string and plays the song at the club.
#
# For example, a song with words "I AM X" can transform into a dubstep remix as "WUBWUBIWUBAMWUBWUBX" and cannot transform into "WUBWUBIAMWUBX".
#
# Recently, Jonny has heard Polycarpus's new dubstep track, but since he isn't into modern music, he decided to find out what was the initial song that Polycarpus remixed. Help Jonny restore the original song.
#
# Input
# The input consists of a single non-empty string, consisting only of uppercase English letters, the string's length doesn't exceed 200 characters
#
# Output
# Return the words of the initial song that Polycarpus used to make a dubsteb remix. Separate the words with a space.
#
# Examples
# song_decoder("WUBWEWUBAREWUBWUBTHEWUBCHAMPIONSWUBMYWUBFRIENDWUB")
#   #  =>  WE ARE THE CHAMPIONS MY FRIEND

# for larger strings
# def song_decoder(song)
#   decode = song.gsub('WUB', '_')
#   decode_delete = decode.delete('_')
#   clean = decode_delete.gsub('', ' ').strip
#   p clean
# end
#
# song_decoder("AWUBBWUBC")# "A B C","WUB should be replaced by 1 space");
# song_decoder("AWUBWUBWUBBWUBWUBWUBC")# "A B C","multiples WUB should be replaced by only 1 space");
# song_decoder("WUBAWUBBWUBCWUB")# "A B C", "heading or trailing spaces should be removed");

# Build Tower
# Build Tower by the following given argument:
# number of floors (integer and always greater than 0).
#
# Tower block is represented as *
#
# Python: return a list;
# JavaScript: returns an Array;
# C#: returns a string[];
# PHP: returns an array;
# C++: returns a vector<string>;
# Haskell: returns a [String];
# Ruby: returns an Array;
# Lua: returns a Table;
# Have fun!
#
# for example, a tower of 3 floors looks like below
#
# [
#   '  *  ',
#   ' *** ',
#   '*****'
# ]
# and a tower of 6 floors looks like below
#
# [
#   '     *     ',
#   '    ***    ',
#   '   *****   ',
#   '  *******  ',
#   ' ********* ',
#   '***********'
# ]

# def towerBuilder(n_floors)
#   floor_array = (1..n_floors).to_a
#   final_array = []
#   floor_num = 1
#   floor_array.map do |floor|
#     floor_num.times do final_array.push('*')
#     end
#     (n_floors - floor).times do final_array.push(' ')
#     end
#     (n_floors - floor).times do final_array.unshift(' ')
#     end
#     floor_num += 2
#     final_join = [final_array.join]
#     p final_join
#     final_array.clear
#   end
# end

#solve with recursion

# def towerBuilder(n_floors)
#   def iterative_factorial(n)
#     p (1..n).inject(:*)
#   end
#
#   iterative_factorial(5)
#
#   def recursive_factorial(n)
#     # Base case
#     return 1 if n <= 1
#     # Recursive call
#     p (n * recursive_factorial(n-1))
#   end
#   floor_array = (1..n_floors).to_a
#   final_array = []
#   floor_num = 1
#   floor_array.map do |floor|
#     floor_num.times do final_array.push('*')
#     end
#     (n_floors - floor).times do final_array.push(' ')
#     end
#     (n_floors - floor).times do final_array.unshift(' ')
#     end
#     floor_num += 2
#     final_join = [final_array.join]
#     p final_join
#     final_array.clear
#   end
# end
#
# towerBuilder(1)# ['*'], "1 floor")
# towerBuilder(2)# [' * ', '***'], "2 floors")
# towerBuilder(3)# ['  *  ', ' *** ', '*****'], "3 floors")
# towerBuilder(5)# ['  *  ', ' *** ', '*****'], "3 floors")
# towerBuilder(8)# ['  *  ', ' *** ', '*****'], "3 floors")
# towerBuilder(13)# ['  *  ', ' *** ', '*****'], "3 floors")

# A pangram is a sentence that contains every single letter of the alphabet at least once. For example, the sentence "The quick brown fox jumps over the lazy dog" is a pangram, because it uses the letters A-Z at least once (case is irrelevant).
#
# Given a string, detect whether or not it is a pangram. Return True if it is, False if not. Ignore numbers and punctuation.

# def panagram?(string)
#   alphabet = ('a'..'z').to_a
#   new_string = string.downcase.gsub(' ', '').chars
#   new_string.each do |letter|
#     alphabet.delete(letter)
#   end
#   p alphabet.empty?
# end

# def panagram?(string)
  # ('a'..'z').all? { |x| string.downcase.include? (x) }
# end

# def panagram?(string)
#   p string.downcase.scan(/[a-z]/).uniq.size == 26
# end
#
# # def panagram?(s)
#   # ("A".."Z").to_a - s.upcase.chars == []
# # end
# #
# # "The quick brown fox jumps over the lazy dog."
#  panagram?("The quick brown fox jumps over the lazy dog.")
#  # "This is not a pangram."
#  panagram?("This is not a pangram.")

#
# def iterative_factorial(n)
#   p (1..n).inject(:*)
# end
#
# iterative_factorial(5)
#
# def recursive_factorial(n)
#   # Base case
#   return 1 if n <= 1
#   # Recursive call
#   p (n * recursive_factorial(n-1))
# end
#
# # (5 * recursive_factorial(5-1))
# # (4 * recursive_factorial(4-1))
# # (3 * recursive_factorial(3-1))
# # (2 * recursive_factorial(2-1))
# # (1)
# # =
# # (1 * 2 * 3 * 4 * 5) = 120
#
#
# recursive_factorial(5)

# Reverse every other word in a given string, then return the string. Throw away any leading or trailing whitespace, while ensuring there is exactly one space between each word. Punctuation marks should be treated as if they are a part of the word in this kata.

# def reverse_alternate(string)
#   final_array = []
#   array = string.split(' ')
#   array.each_with_index do |element, index|
#     if index.odd?
#       final_array << element.reverse
#     else
#       final_array << element
#     end
#   end
#   p final_array.join(' ')
# end
# def reverse_alternate(string)
  # string.split.map.with_index{|w,i| i.odd? ? w.reverse : w}.join(' ')
# end
# #
# reverse_alternate("Did it work?")# "Did ti work?")
# reverse_alternate("I really hope it works this time...")# "I yllaer hope ti works siht time...")
# reverse_alternate("Reverse this string, please!")# "Reverse siht string, !esaelp")
# reverse_alternate("Have a beer")# "Have a beer")
# reverse_alternate("")# "")
