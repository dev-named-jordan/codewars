
# Complete the method/function so that it converts dash/underscore delimited words into camel casing. The first word within the output should be capitalized only if the original word was capitalized (known as Upper Camel Case, also often referred to as Pascal case).
#
# Examples
# "the-stealth-warrior" gets converted to "theStealthWarrior"
# "The_Stealth_Warrior" gets converted to "TheStealthWarrior"


def to_camel_case(str)
  return str if str.empty?
  foo = str.gsub(/[_-]/, " ")
  bar = foo.split.map(&:capitalize)
  new = bar.join
  unless str[0] == str[0].upcase
    new[0] = new[0].downcase
  end
  p new
end

# def to_camel_case(str)
#   str.gsub(/[_-](.)/) {"#{$1.upcase}"}
# end

# def to_camel_case(str)
#   str.gsub('_','-').split('-').each_with_index.map{ |x,i| i == 0 ? x : x.capitalize }.join
# end

to_camel_case('')#, ''# "An empty string was provided but not returned"
to_camel_case("the_stealth_warrior")#, "theStealthWarrior"# "to_camel_case('the_stealth_warrior') did not return correct value")
to_camel_case("The-Stealth-Warrior")#, "TheStealthWarrior"# "to_camel_case('The-Stealth-Warrior') did not return correct value")
to_camel_case("A-B-C")#, "ABC"# "to_camel_case('A-B-C') did not return correct value")
