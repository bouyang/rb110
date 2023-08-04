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
    prompt "Choose a position to place a piece: #{joinor(empty_squares(board))}"
    player_position = gets.chomp.to_i
    break if empty_squares(board).include?(player_position)
    prompt "Invalid sqaure, choose again"
  end
  board[player_position] = PLAYER_MARKER
end

def computer_turn!(board)
  if defense(board) == nil && offense(board) == nil
    if board[5] == ' '
      computer_position = 5
    else
      computer_position = empty_squares(board).sample
    end
  elsif offense(board) != nil
    computer_position = offense(board)
  else
    computer_position = defense(board)
  end
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

def joinor(arr, connector = ', ', word = 'or')
  phrase = ''
  if arr.size == 1
    return arr.first.to_s
  elsif arr.size == 2
    phrase = "#{arr[0]} #{word} #{arr[1]}"
    return phrase
  else
    arr.each_with_index do |num, index|
      if index == arr.size - 1
        phrase += "#{word} #{num}"
        return phrase
      else
        phrase += "#{num}#{connector}"
      end
    end
  end
end

def defense(board)
  WINNING_LINES.each do |line|
    count = 0
    for index in line do
      if board[index] == PLAYER_MARKER
        count += 1
      end
    end
    if count == 2
      line.each do |pos|
        if board[pos] == ' '
          return pos
        end
      end
    end
  end
  return nil
end

def offense(board)
  WINNING_LINES.each do |line|
    count = 0
    for index in line do
      if board[index] == COMPUTER_MARKER
        count += 1
      end
    end
    if count == 2
      line.each do |pos|
        if board[pos] == ' '
          return pos
        end
      end
    end
  end
  return nil
end

def alternate_player(current_player)
  if current_player == 'Player'
    return 'Computer'
  end
  return 'Player'
end

def place_piece!(board, current_player)
  if current_player == 'Player'
    player_turn!(board)
  else
    computer_turn!(board)
  end
end

# Main function

player_score = 0
computer_score = 0

loop do
  board = initialize_board

  prompt "Who will go first? (1 or you, 2 for computer, 3 for random)"
  first = gets.chomp.to_i

  if first == 3
    first = rand(1..2)
    puts first
  end
  
  if first == 1
    current_player = 'Player'
    loop do
      display_board(board)
      place_piece!(board, current_player)
      current_player = alternate_player(current_player)
      # player_turn!(board)
      break if check_winner?(board) || board_full?(board)
      # computer_turn!(board)
      # break if check_winner?(board) || board_full?(board)
    end
  else
    current_player = 'Computer'
    loop do
      computer_turn!(board)
      display_board(board)
      break if check_winner?(board) || board_full?(board)
      player_turn!(board)
      break if check_winner?(board) || board_full?(board)
    end
  end

  display_board(board)

  if check_winner?(board)
    winner = detect_winner(board)
    prompt "#{winner} won!"
    if winner == 'Player'
      player_score += 1
    elsif winner == 'Computer'
      computer_score += 1
    end
  else
    prompt "It's a tie!"
  end

  prompt "The current score is: You: #{player_score}, Computer: #{computer_score}"
  if player_score >= 5
    prompt "You win!"
    break
  elsif computer_score >= 5
    prompt "Computer wins!"
    break
  end

  prompt "Do you want to play again?"
  response = gets.chomp
  break if response.downcase == 'n'
end

prompt "Thanks for playing, goodbye!"
