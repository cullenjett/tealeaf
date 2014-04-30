#blackjack

require 'pry'

def calculate_total(hand) # [['5', 'Hearts'], ['2', 'Spades']...]
  total = 0
  
  hand.each do |card|
    case card.first
    when 'J'
      total += 10
    when 'Q'
      total += 10
    when 'K'
      total += 10
    when 'A'
      total += 11 # FIX THIS: 'A' is worth 11 unless your total goes over 21, then it's worth 1
    end
    total += card.first.to_i
  end
  total
end


#----- create a deck -----

num_array = [ '2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A' ]
suit_array = [ 'Hearts', 'Diamonds', 'Spades', 'Clubs' ]

deck = num_array.product(suit_array)
deck.shuffle!


#----- deal 2 cards to player and dealer -----

player_hand = []
dealer_hand = []

2.times do |e|
  player_hand << deck.pop
  dealer_hand << deck.pop
end


#----- show cards, get input from player -----

puts "---> Welcome to the table. #{deck.count} cards are shuffled and ready to deal! <---"

puts "Your hand: #{player_hand[0]} and #{player_hand[1]}."
puts "YOUR TOTAL: " + calculate_total(player_hand).to_s

puts ''

puts "The dealer has: #{dealer_hand[0]} and #{dealer_hand[1]}."
puts "DEALER'S TOTAL: " + calculate_total(dealer_hand).to_s

puts ''

puts "What would you like to do? 1.Hit 2.Stay"
choice = gets.chomp
choice.downcase!

#----- actions for when player hits or stays -----

while choice == '1'
  player_hand << deck.pop
  puts "You hand: #{player_hand}"
  puts "Your TOTAL: " + calculate_total(player_hand).to_s
  puts "What would you like to do? 1.Hit 2.Stay"
  choice = gets.chomp
  choice.downcase!
end

while choice == '2'
  #END GAME
  break
end



