require 'pry'
require 'pry-byebug'

INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'

WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] +
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] +
                [[1, 5, 9], [3, 5, 7]]

def prompt(message)
  puts "=> #{message}"
end

# rubocop: disable Metrics/AbcSize
def display_board(board_state)
  system 'clear'
  puts "You are #{PLAYER_MARKER}. Computer is #{COMPUTER_MARKER}"
  puts ""
  puts "     |     |"
  puts "  #{board_state[1]}  |  #{board_state[2]}  |  #{board_state[3]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{board_state[4]}  |  #{board_state[5]}  |  #{board_state[6]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{board_state[7]}  |  #{board_state[8]}  |  #{board_state[9]}"
  puts "     |     |"
end
# rubocop: enable Metrics/AbcSize

def empty_squares(board)
  board.keys.select { |num| board[num] == INITIAL_MARKER }
end

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def player_turn!(board)
  player_position = ''
  loop do
    prompt "Choose a square (#{empty_squares(board).join(', ')})"
    player_position = gets.chomp.to_i
    break if empty_squares(board).include?(player_position)
    prompt "Invalid sqaure, choose again"
  end
  board[player_position] = PLAYER_MARKER
end

def computer_turn!(board)
  computer_position = empty_squares(board).sample
  prompt "Computer plays position #{computer_position}"
  board[computer_position] = COMPUTER_MARKER
end

def check_winner?(board)
  !!detect_winner(board)
end

def board_full?(board)
  empty_squares(board).empty?
end

def detect_winner(board)
  WINNING_LINES.each do |line|
    line2 = line.map do |pos|
      board[pos]
    end
    if line2.count(PLAYER_MARKER) == 3
      return 'Player'
    elsif line2.count(COMPUTER_MARKER) == 3
      return 'Computer'
    end
  end
  false
end

loop do
  board = initialize_board

  loop do
    display_board(board)
    player_turn!(board)
    break if check_winner?(board) || board_full?(board)
    computer_turn!(board)
    break if check_winner?(board) || board_full?(board)
  end

  display_board(board)

  if check_winner?(board)
    prompt "#{detect_winner(board)} won!"
  else
    prompt "It's a tie!"
  end

  prompt "Do you want to play again?"
  response = gets.chomp
  break if response.downcase == 'n'
end

prompt "Thanks for playing, goodbye!"
