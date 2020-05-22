# Card Deck

# We started working on a card game but got stuck. Check out why the code below raises a TypeError.
# Once you get the program to run and produce a sum, you might notice that the sum is off: It's lower than it should be. Why is that?

cards = [2, 3, 4, 5, 6, 7, 8, 9, 10, :jack, :queen, :king, :ace]

deck = { :hearts   => cards,
         :diamonds => cards,
         :clubs    => cards,
         :spades   => cards }

def score(card)
  case card
  when :ace   then 11
  when :king  then 10
  when :queen then 10
  when :jack  then 10
  else card
  end
end

# * Pick one random card per suit * 

# Create two new arrays. One array for cards selected by the player. One array for cards left over, unselected by the player.
player_cards = []
unused_cards = []

# 0. Looping through the Deck hash 4 times, once for each of the card suits (represented by the Deck hash's keys)
# 1. Each suit has 13 cards, represented in the cards array (i.e. cards.length)
# 2. The 'shuffle!' method is then called to shuffle the deck of cards for each suit.
# 3. The last card in the newly shuffled deck of suits is selected ('pop' / removed) and added to the 'player_cards' array.
# 4. Steps 1-3 are repeated 4 times (explained in step 0), until the 'player_cards' array contains 4 items, or 4 card selections from the player. 
deck.keys.each do |suit|
  cards_before_shuffle = deck[suit]
  #p "cards at start: #{cards_before_shuffle}"
  cards_after_shuffle = cards_before_shuffle.shuffle
  unused_cards << cards_after_shuffle
  #p "cards after shuffle are: #{cards_after_shuffle}"
  player_cards << cards_after_shuffle.pop
  #p "Player cards: #{player_cards}"
  #p "-------"
  # Convert player cards to their numerical equivalent (if needed)
  player_cards.map! do |x|
    score(x)
  end
end
# Convert the remaining deck values to their numerical equivalent (if needed)
deck.map do |key, value|
  value.map! do |x|
    score(x)
  end
end

# Determine the score of the remaining cards in the deck
# Convert the unused cards to their numerical equivalent values (if needed)
unused_cards.map! do |arr|
  arr.map! do |val|
    score(val)
  end 
end 
# Flatten into one array
unused_cards = unused_cards.flatten
# The sum value of the remaing cards in the deck
unused_cards_sum = unused_cards.sum
#p "The sum of the unused cards is: #{unused_cards_sum}"

# Total sum is the total value of all 4 decks of cards, before any cards have been selected.
total_sum = (95*4)
#p "total sum is: #{total_sum}"
# Player sum is the sum of all cards selected by the player
player_sum = player_cards.map {|card| score(card)}.sum
#p "player sum is: #{player_sum}"
# See if the value of the unused cards is equal to the total sum mius the total of the player's card selections.
p unused_cards_sum == total_sum - player_sum
