#blackjack

require 'pry'

def calculate_total(hand)
  arr = hand.map { |e| e[0] }

  total = 0
  arr.each do |value|
    if value == 'A'
      total += 11
    elsif value.to_i == 0 # J, Q, K
      total += 10
    else
      total += value.to_i
    end
  end

  #correct for aces
  arr.select{ |e| e == 'A' }.count.times do
    total -= 10 if total > 21
  end

  total
end


#----- Start game, create deck -----

puts "---> Welcome to the blackjack table <---"

num_array = [ '2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A' ]
suit_array = [ 'Hearts', 'Diamonds', 'Spades', 'Clubs' ]

deck = num_array.product(suit_array)
deck.shuffle!


#----- Deal 2 cards to player and dealer -----

player_hand = []
dealer_hand = []

2.times do |e|
  player_hand << deck.pop
  dealer_hand << deck.pop
end

player_total = calculate_total(player_hand)
dealer_total = calculate_total(dealer_hand)


#----- Show cards, get input from player -----

puts "Your hand: #{player_hand[0]} and #{player_hand[1]}."
puts "YOUR TOTAL: #{player_total}"
puts ''
puts "The dealer has: #{dealer_hand[0]} and #{dealer_hand[1]}."
puts "DEALER'S TOTAL: #{dealer_total}"
puts ''


#----- Player's turn -----

if player_total == 21
  puts "BLACKJACK! YOU WIN!"
  exit
end

while player_total < 21
  puts "What would you like to do? 1.Hit 2.Stay"
  choice = gets.chomp

  if !['1', '2'].include?(choice)
    puts "Error: you must enter 1 or 2"
    next
  end

  if choice == '2'
    puts "You chose to stay"
    break
  end

  #hit
  new_card = deck.pop
  puts "You drew #{new_card}"
  player_hand << new_card
  player_total = calculate_total(player_hand)
  puts "Your hand is now #{player_hand}"
  puts "YOUR TOTAL: #{player_total}"

  if player_total == 21
    puts "BLACKJACK! YOU WIN!"
    exit
  elsif player_total > 21
    puts "BUST! YOU LOSE!"
    exit
  end
end


#----- Dealer's turn -----

if dealer_total == 21
  puts "Dealer hit blackjack. You lose."
  exit
end

while dealer_total < 17
  #hit
  new_card = deck.pop
  puts "Dealing new card for dealer: #{new_card}"
  dealer_hand << new_card
  dealer_total = calculate_total(dealer_hand)
  puts "Dealer TOTAL: #{dealer_total}"

  if dealer_total == 21
    puts "Sorry, dealer hit blackjack. You lose."
    exit
  elsif dealer_total > 21
    puts "Congrats, dealer busted! YOU WIN!"
    exit
  end
end

#----- compare hands -----

puts "Dealer's cards: "
dealer_hand.each { |card| puts "=> #{card}" }
puts ''
puts "Your cards: "
player_hand.each { |card| puts "=> #{card}"}
puts ''

if dealer_total > player_total
  puts "Sorry, dealer wins."
elsif dealer_total < player_total
  puts "YOU WIN!"
else
  puts "TIE"
end
exit
