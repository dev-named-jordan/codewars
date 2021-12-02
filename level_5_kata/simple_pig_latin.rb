# Move the first letter of each word to the end of it, then add "ay" to the end of the word. Leave punctuation marks untouched.
#
# Examples
# pig_it('Pig latin is cool') # igPay atinlay siay oolcay
# pig_it('Hello world !')     # elloHay orldway !

def pig_it(text, default = [])
  text_array = text.split
  default_list = default
  text_array.map do |word|
    first_letter = word[0]
    suffix = word.delete(word[0])
    re_formatted = "#{ suffix }#{ first_letter }#{ "ay" }"
    removed_word = text_array.delete(text_array[0])
    if !default.empty?
      default_list.push(default)
    end
    if (text.split.count == 1) && (text_array.count == 0)
      default_list.push(re_formatted)
      last_list = default_list.map do |list|
        list if list.is_a?(String)
      end
      p last_list.compact.join(" ")
      break
    else
      default_list.push(re_formatted)
      pig_it(text_array.join(" "), default_list)
    end
    break
  end
end

pig_it('Pig latin is cool')#'igPay atinlay siay oolcay'
pig_it('This is my string')#'hisTay siay ymay tringsay'
