# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant

WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]
  ]
  
  def won?(board)
  WIN_COMBINATIONS.each do |win_combination|
    
  win_index_1 = win_combination[0]
  win_index_2 = win_combination[1]
  win_index_3 = win_combination[2]
  win_index_4 = win_combination[3]
  win_index_5 = win_combination[4]
  win_index_6 = win_combination[5]
  win_index_7 = win_combination[6]
  win_index_8 = win_combination[7]
  win_index_9 = win_combination[8]
  
  position_1 = board[win_index_1] 
  position_2 = board[win_index_2] 
  position_3 = board[win_index_3]
  position_4 = board[win_index_4] 
  position_5 = board[win_index_5] 
  position_6 = board[win_index_6] 
  position_7 = board[win_index_7] 
  position_8 = board[win_index_8] 
  position_9 = board[win_index_9]
  
    if position_1 == "X" && position_2 == "X" && position_3 == "X"
      return win_combination
    elsif position_4 == "X" && position_5 == "X" && position_6 == "X"
      return  win_combination
    elsif position_7 == "X" && position_8 == "X" && position_9 == "X"
    else
      return false
    end
  end
end

# full?
def full?(board)
  if board.any?{|position| position == " "}
    return false
  else
    return true
  end
end
