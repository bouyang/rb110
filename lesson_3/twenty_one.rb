# 1. Initialize deck
# 2. Deal cards to player and dealer
# 3. Player turn: hit or stay
#   - repeat until bust or "stay"
# 4. If player bust, dealer wins.
# 5. Dealer turn: hit or stay
#   - repeat until total >= 17
# 6. If dealer bust, player wins.
# 7. Compare cards and declare winner.
SUITS = ['D', 'H', 'C', 'S']
CARDS = ['A', '2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K']
VALUES = { 'A' => 11, '2' => 2, '3' => 3, '4' => 4, '5' => 5,
           '6' => 6,  '7' => 7,  '8' => 8, '9' => 9, '10' => 10,
           'J' => 10, 'Q' => 10, 'K' => 10 }
MAX_TOTAL = 21
DEALER_MAX = 17

def prompt(message)
  puts "=> #{message}"
end

def initialize_deck
  deck = []
  SUITS.each do |suit|
    CARDS.each do |card|
      deck << [suit, card]
    end
  end
  deck
end

def deal_player(deck)
  card = deck.sample
  deck.delete(card)
  card
end

def display_hand(player_hand, player)
  hand_values = []

  player_hand.each do |card|
    hand_values << card[1]
  end

  if player == 'Player'
    hand_values = hand_values.join(' and ')
    puts "You have: #{hand_values}"
  elsif player == 'Dealer'
    puts "Dealer has: #{hand_values[0]} and unknown card"
  else
    hand_values = hand_values.join(' and ')
    puts "Dealer has: #{hand_values}"
  end
end

# rubocop:disable Style/ConditionalAssignment
def check_hand(player_hand)
  values = player_hand.map { |card| card[1] }

  sum = 0
  values.each do |value|
    if value == 'A'
      sum += 11
    elsif value.to_i == 0 # J, Q, K
      sum += 10
    else
      sum += value.to_i
    end
  end

  # correct for Aces
  values.select { |value| value == "A" }.count.times do
    sum -= 10 if sum > MAX_TOTAL
  end

  sum
end
# rubocop:enable Style/ConditionalAssignment

def check_winner(player_hand, dealer_hand)
  player_sum = check_hand(player_hand)
  dealer_sum = check_hand(dealer_hand)

  display_hand(dealer_hand, 'Dealer Reveal')
  display_hand(player_hand, 'Player')

  if dealer_sum == player_sum
    'Push'
  elsif player_sum > MAX_TOTAL || ((player_sum < dealer_sum) && dealer_sum < MAX_TOTAL)
    'Dealer'
  elsif dealer_sum > MAX_TOTAL || (player_sum > dealer_sum)
    'Player'
  end
end

def display_winner(winner)
  if winner == 'Push'
    prompt "It is a push!"
  else
    prompt "#{winner} has won!"
  end
end

player_wins = 0
dealer_wins = 0

loop do
  system 'clear'
  deck = initialize_deck
  dealer_hand = []
  player_hand = []

  dealer_hand << deal_player(deck)
  player_hand << deal_player(deck)
  dealer_hand << deal_player(deck)
  player_hand << deal_player(deck)

  display_hand(dealer_hand, 'Dealer')
  display_hand(player_hand, 'Player')

  loop do
    prompt "Would you like to (hit) or (stay)?"
    decision = gets.chomp
    if decision == 'hit' || decision == 'h'
      player_hand << deal_player(deck)
      system 'clear'
      display_hand(dealer_hand, 'Dealer')
      display_hand(player_hand, 'Player')
    else
      break
    end
    break if check_hand(player_hand) > MAX_TOTAL
  end
  if check_hand(player_hand) > MAX_TOTAL
    prompt "You have busted!"
  else
    loop do
      prompt "Dealer hits"
      dealer_hand << deal_player(deck)
      break if check_hand(dealer_hand) >= DEALER_MAX
    end
  end

  winner = check_winner(player_hand, dealer_hand)
  display_winner(winner)
  if winner == 'Player'
    player_wins += 1
  elsif winner == 'Dealer'
    dealer_wins += 1
  end

  prompt "The score is: Player: #{player_wins}, Dealer: #{dealer_wins}"

  if player_wins == 5
    prompt "You are the grand winner!"
    break
  elsif dealer_wins == 5
    prompt "Dealer is the grand winner!"
    break
  end

  prompt "Would you like to play again? (y/n)"
  again = gets.chomp
  break if again == 'n'
end
