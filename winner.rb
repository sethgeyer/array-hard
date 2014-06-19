board = [['O', 'O', 'X'],
         ['X', 'X', 'O'],
         ['0', 'X', 'O']]


def evaluate_tic_tac_toe_board(board)
  evaluate_horizontal_win(board)
  evaluate_vertical_win(board)
  evaluate_diagonal_win(board)


end


#determine who won the game


def who_won(x, o)
  puts "X Wins" if x == 3
  puts "O Wins" if o == 3
  puts "evaluated horizontal"
end

def evaluate_diagonal_win(board)
  center_square = board[1][1]
  if center_square == board[0][0]
    if center_square == board[2][2]
      puts "winner: #{center_square} - evaluated diagonal" and return
    end
  else center_square == board[0][2]
    if center_square == board[2][0]
      puts "winner: #{center_square} - evaluated diagonal" and return
    end
  end
end




def evaluate_vertical_win(board)
  board[0].each_with_index do |move0, index|
    if move0 == board[1][index]   #evaluate 1st w/ 2nd
      if move0 == board[2][index] #evaluate 2nd w/ 3rd
        puts "winner: #{move0} - evaluated horizontal"
        break
      end
    end
  end
end


def evaluate_horizontal_win(board)
  x_moves = 0
  o_moves = 0

  board.each do |row|
    x_moves = 0
    o_moves = 0
    row.each do |move|
      x_moves += 1 if move == "X"
      o_moves += 1 if move == "O"
      if x_moves == 3 || o_moves == 3
        who_won(x_moves, o_moves)
        break
      end
    end
  end
end



evaluate_tic_tac_toe_board(board)





