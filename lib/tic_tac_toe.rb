class TicTacToe
  
  WIN_COMBINATIONS = [
    
    [0,1,2], #top row 
    [3,4,5], #mid row
    [6,7,8], #bot row 
    [0,4,8], #diag 1 
    [2,4,6], #diag 2 
    [0,3,6], #left col 
    [1,4,7], #mid col 
    [2,5,8] #right col 
   
    ]
  
  def initialize(board=nil)
    @board = board || Array.new(9, " ")
  end   
  
  def display_board
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts "-----------"
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts "-----------"
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end
  
  def input_to_index(input)
    input = input.to_i - 1 
  end   
  
  def move(index, token="X")
    @board[index] = token
  end   
  
  def position_taken?(index)
    if @board[index] == " "
      false 
    else 
      true
    end   
  end   
  
  def valid_move?(index)
    if index.between?(0,8) && position_taken?(index) == false 
      true 
    else 
      false
    end 
  end   
  
  def turn 
    puts "Please input 1-9: "
    input = gets 
    input_to_index(input)
    if valid_move?(input)
      move(input, token)
    else
      puts "Please input a valid move 1-9: "
    end   
  end   
  
  def turn_count
    9 - @board.count(" ")
  end   
  
  def current_player
    if turn_count.even?
      "X"
    else 
      "O"
    end 
  end   
  
  def won?
    
    #x_array = board.each_index.select{|i| board[i] == 'X'}
    #o_array = board.each_index.select{|i| board[i] == 'O'}
    
  end
  
  def full?
    @board.all?{|square| sqaure != " "}
  end   
  
  def draw?
    full? && !won?
  end 
  
  def over?
    won? || draw?
  end   
  
  def winner
    #code
  end 
  
  def play 
#     until the game is over
#   take turns
# end
 
# if the game was won
#   congratulate the winner
# else if the game was a draw
#   tell the players it ended in a draw
# end
  end   
end   