require 'matrix'

# a = Matrix[ [1,2,3], [4,5,6], [7,8,9] ]
# b = Matrix[ [1,2,3], [4,5,6], [7,8,9] ]
# a = Matrix[ [25, 93], [-1, 66] ]
# b = Matrix[ [25, 93], [-1, 66] ]
# p a + b
#
# m = Matrix.build(5, 5) do |row, column|
#   row
# end

# m = Matrix.build(5) { rand }
# m = Matrix.build(5,5) do |row, column|
#   '-' if row
# end

# p m

# rows, columns = 2, 3
#
# matrix = Array.new(rows) { Array.new(columns) }
#
# p matrix

def initialize_board(n, val)
  Array.new(n) { Array.new(n) { val } }
end

arr = initialize_board(5, '-')

p arr
