# You probably know the "like" system from Facebook and other pages. People can "like" blog posts, pictures or other items. We want to create the text that should be displayed next to such an item.
#
# Implement the function likes which takes an array containing the names of people that like an item. It must return the display text as shown in the examples:
#
# likes [] -- must be "no one likes this"
# likes ["Peter"] -- must be "Peter likes this"
# likes ["Jacob", "Alex"] -- must be "Jacob and Alex like this"
# likes ["Max", "John", "Mark"] -- must be "Max, John and Mark like this"
# likes ["Alex", "Jacob", "Mark", "Max"] -- must be "Alex, Jacob and 2 others like this"
# For 4 or more names, the number in and 2 others simply increases.

def likes(names)
  if names == []
    "no one likes this"
  elsif names != []
    if names.count == 1
      "#{names[0]} likes this"
    elsif names.count == 2
      "#{names[0]} and #{names[1]} like this"
    elsif names.count == 3
      "#{names[0]}, #{names[1]} and #{names[2]} like this"
    elsif names.count >= 4
      "#{names[0]}, #{names[1]} and #{names.count - 2} others like this"
    end
  end
end

p likes([]) # 'no one likes this'
p likes(['Peter']) # 'Peter likes this'
p likes(['Jacob', 'Alex']) # 'Jacob and Alex like this'
p likes(['Max', 'John', 'Mark']) # 'Max, John and Mark like this'
p likes(['Alex', 'Jacob', 'Mark', 'Max']) # 'Alex, Jacob and 2 others like this'
