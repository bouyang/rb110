cards = [2, 3, 4, 5, 6, 7, 8, 9, 10, :jack, :queen, :king, :ace]

deck = { :hearts   => cards.clone,
         :diamonds => cards.clone,
         :clubs    => cards.clone,
         :spades   => cards.clone }

def score(card)
  case card
  when :ace   then 11
  when :king  then 10
  when :queen then 10
  when :jack  then 10
  else card
  end
end

# Pick one random card per suit

player_cards = []
deck.keys.each do |suit|
  cards = deck[suit]
  cards.shuffle!
  player_cards << cards.pop
end

# Determine the score of the remaining cards in the deck

sum = deck.reduce(0) do |sum, (_, remaining_cards)|
  rem_sum = remaining_cards.map do |card|
    score(card)
  end

  sum += rem_sum.sum
end

puts sum

=begin
  In each iteration of choosing a new suit, the cards in the deck will be the cards that remain from the previous suit where one card was popped. We need to change this by creating a new cards array
  for each suit.

  Next, in the map method invocation in line 30, we do not do anything with the return value which is an array of the remaining cards' scores. We can store this in a new variable and then sum that
=end