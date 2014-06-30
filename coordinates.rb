board = [['X', 'O', 'O'],
         ['X', 'X', 'O'],
         ['O', 'X', 'O']]

array_of_coordinates = []
board.each_with_index do |row, ycoordinate|
  row.each_with_index do |move, xcoordinate|
    if move == "X"
      x = "x#{xcoordinate + 1}"
      y = "y#{3 - ycoordinate}"
      array_of_coordinates << [x, y]
    end
  end
end



p array_of_coordinates

=begin
['x1y3' , 'O'    , 'O']
['x1y2' , 'x2y2' , 'O']
['O'    , 'x2y1' , 'O']
=end



