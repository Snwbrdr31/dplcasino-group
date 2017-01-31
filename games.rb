require 'pry'
require_relative 'dice'
require_relative 'high_low'
                  #   { game: 'Blackjack', price: 20.00},
                  #   { game: 'Roulette', price: 3.00},
                  #   { game: 'Uno', price: 1.00},
                  # ]
class Games
  attr_accessor :games, :price, :casino
  def initialize(casino)
    @casino = casino
    @selection_options = [ { game: 'Dice',   price: 2.00},
                           { game: 'Slots', price: 3.00},
                           { game: 'High Low', price: 3.00}
                         ]
    puts "What game do you want to play?"
    @selection_options.each_with_index do |options, index|
      puts "#{index + 1} #{options[:game]} #{options[:price]}"
    end
    @user_input = gets.chomp.to_i
    if @user_input == 1
       Dice.new(@casino)
    elsif @user_input == 2
        Slots.new
    elsif @user_input == 3
      HighLow.new(@casino)
    else 
        puts "invalid"
        initialize 
    end 
  end
end
  
