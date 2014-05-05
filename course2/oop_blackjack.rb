#oop_blackjack.rb
require 'pry'


# ***********
# * MODULES *
# ***********

module Hand

  def show_hand
    puts "--- #{name}'s Hand ---"
    
    cards.each do |card|
      puts "> #{card}"
    end

    puts "=> Total: #{total}"
    puts ''
  end


  def total
    face_value = cards.map { |card| card.value }
    
    total = 0
    face_value.each do |v|
      if v == 'Ace'
        total += 11
      elsif v.to_i == 0
        total += 10
      else
        total += v.to_i
      end
    end

    #Correct for Aces
    face_value.select {|v| v == 'Ace'}.count.times do
      total -= 10 if total > 21
    end

    total
  end


  def add_card(new_card)
    cards << new_card
  end


  def is_busted?
    total > Blackjack::BLACKJACK_AMT
  end
end #Hand



# ***********
# * CLASSES *
# ***********

class Card
  attr_accessor :value, :suit

  def initialize(value, suit)
    self.value = value
    self.suit = suit
  end

  def to_s
    "#{value} of #{suit}"
  end
end #Card


class Deck
  attr_accessor :cards
  
  def initialize
    self.cards = []
    ['Hearts', 'Diamonds', 'Spades', 'Clubs'].each do |suit|
      ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'Jack', 'Queen', 'King', 'Ace'].each do |value|
        self.cards << Card.new(value, suit)
      end
    end
    cards.shuffle!
  end

  def deal_one
    cards.pop
  end

  def size
    cards.size
  end
end #Deck


class Player
  include Hand
  attr_accessor :name, :cards

  def initialize(name)
    self.name = name
    self.cards = []
  end
end #Player


class Dealer
  include Hand    
  attr_accessor :name, :cards

  def initialize
    self.name = "The Shifty Dealer"
    self.cards = []
  end

  def show_flop
    puts "--- #{name}'s Hand ---"
    puts "> * hidden *"
    puts "> #{cards[1]}"
    puts ''
  end
end #Dealer



# *******************
# * GAMEPLAY ENGINE *
# *******************

class Blackjack
  attr_accessor :deck, :player, :dealer

  BLACKJACK_AMT = 21
  DEALER_HIT_MIN = 17

  def initialize
    self.deck = Deck.new
    self.player = Player.new("Player 1")
    self.dealer = Dealer.new
  end


  def welcome
    puts "************************"
    puts "* WELCOME TO BLACKJACK *"
    puts "************************"
    puts ''
  end


  def set_player_name
    puts "What should I call you?"
    player.name = gets.chomp
    puts ''
    puts "Dealing..."
    puts ''
  end


  def deal_cards
    player.add_card(deck.deal_one)
    dealer.add_card(deck.deal_one)
    player.add_card(deck.deal_one)
    dealer.add_card(deck.deal_one)
  end


  def show_flop
    player.show_hand
    dealer.show_flop
  end


  def blackjack_or_bust?(player_or_dealer)
    if player_or_dealer.total == BLACKJACK_AMT
      if player_or_dealer.is_a?(Dealer)
        puts "Sorry, #{dealer.name} hit blackjack. #{player.name} loses!"
      else
        puts "#{player.name} hit blackjack! #{player.name} wins!"
      end
      play_again?
    elsif player_or_dealer.is_busted? 
      if player_or_dealer.is_a?(Dealer)
        puts "Congratulations, #{dealer.name} has busted, #{player.name} wins!"
      else
        puts "Sorry, #{player.name}, you've busted...loser."
      end
      play_again?
    end
  end


  def player_turn
    puts "* #{player.name}'s Turn *"

    blackjack_or_bust?(player)

    while !player.is_busted? 
      puts "What would you like to do? 1) Hit 2) Stay."
      response = gets.chomp
      puts ''
  
      if !['1', '2'].include?(response)
        puts "ERROR: you must enter 1 or 2"
        next
      end

      if response == '2'
        puts "#{player.name} stays at #{player.total}."
        puts ''
        break
      end

      #hit
      new_card = deck.deal_one
      puts "#{player.name} drew the #{new_card}"
      player.add_card(new_card)
      puts ''
      puts "#{player.name}'s total is now: #{player.total}"
      puts ''

      blackjack_or_bust?(player)
    end
  end


  def dealer_turn
    puts "* #{dealer.name}'s Turn *"
    puts ''

    blackjack_or_bust?(dealer)

    while dealer.total < DEALER_HIT_MIN
      new_card = deck.deal_one
      puts "#{dealer.name} drew the #{new_card}"
      dealer.add_card(new_card)
      puts "#{dealer.name}'s total: #{dealer.total}"
      puts ''

      blackjack_or_bust?(dealer)
    end
    puts "#{dealer.name} stays at #{dealer.total}."
  end


  def who_won?(player, dealer)
    if player.total > dealer.total
      puts "Woohoo, #{player.name} wins!"
    elsif player.total < dealer.total
      puts "Sorry, #{dealer.name} wins :("
    else
      puts "It's a tie..."
    end
    play_again?
  end


  def play_again?
    puts ''
    puts "Would you like to play again? 1) Yes 2) No way!"
    if gets.chomp == '1'
      puts "Starting new game..."
      puts ''

      deck = Deck.new
      player.cards = []
      dealer.cards = []
      start
    else
      puts "Goodbye."
      exit
    end
  end


  def start
    welcome
    set_player_name
    deal_cards
    show_flop
    player_turn
    dealer_turn
    who_won?(player, dealer)
  end
end #Blackjack

game = Blackjack.new
game.start


