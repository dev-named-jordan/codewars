def convert(s, num_rows)
    splits = []
    until splits.count == num_rows
        splits << ""
    end
    until s == ''
        index = 0
        until index == num_rows - 1 || s ==''
            splits[index] = splits[index] + s[0]
            s = s.delete_prefix(s[0])
            index += 1
        end
        index = num_rows -1
        until index == 0 || s ==''
			splits[index] = splits[index] + s[0]
            s = s.delete_prefix(s[0])
            index -= 1
        end
    end
    splits.join('')
end

p convert("PAYPALISHIRING",3)
