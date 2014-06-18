board = [['X', 'O', 'O'],['X', 'X', 'O'], ['O', 'X', 'O']]

  # iterate through the array
x_moves = 0
o_moves = 0

board.each do |row|
  row.each do |move|
    x_moves += 1 if move == "X"
    o_moves += 1 if move == "O"
  end
end

puts x_moves
puts o_moves