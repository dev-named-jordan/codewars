# Adjacent repeated words in a string
#
# You know how sometimes you write the the same word twice in a sentence, but then don't notice that it happened? For example, you've been distracted for a second. Did you notice that "the" is doubled in the first sentence of this description?
#
# As as aS you can see, it's not easy to spot those errors, especially if words differ in case, like "as" at the beginning of this sentence.
#
# Write a function that counts the number of sections repeating the same word (case insensitive). The occurence of two or more equal words next after each other counts as one.
#
# Examples
# "dog cat"                  -->  0
# "dog DOG cat"              -->  1
# "apple dog cat"            -->  0
# "pineapple apple dog cat"  -->  0
# "apple apple dog cat"      -->  1
# "apple dog apple dog cat"  -->  0
# "dog dog DOG dog dog dog"  -->  1
# "dog dog dog dog cat cat"  -->  2
# "cat cat dog dog cat cat"  -->  3

def count_adjacent_pairs(s)
  array = s.downcase.split(' ')
  final = array.select{ |e| array.count(e) > 1 }
  final.uniq.count
end
#
# def count_adjacent_pairs(s)
#   s.downcase(:fold).split.chunk_while(&:==).count{ |c| c.size > 1 }
# end
#
# def count_adjacent_pairs(s)
#   s.scan(/\b(\S+)(\s+\1)+\b/i).count
# end
#
# def count_adjacent_pairs(s)
#   s.downcase.split.chunk_while{|a,b| a==b}.count{|a| a.size > 1}
# end

# def count_adjacent_pairs(s)
#   (s + " ").scan(/(\b.+\b)\1+/i).size
# end


# unique = array.uniq
# similar = array & unique

p count_adjacent_pairs('')# 0)
p count_adjacent_pairs('orange Orange kiwi pineapple apple')# 1)
p count_adjacent_pairs('banana banana banana')# 1)
p count_adjacent_pairs('banana banana banana terracotta banana terracotta terracotta pie!')# 2)
p count_adjacent_pairs('pineapple apple')# 0)
p count_adjacent_pairs('FLOat flOat ord Ord')# 2)
