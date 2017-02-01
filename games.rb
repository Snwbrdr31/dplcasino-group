require 'pry'
require_relative 'dice'
require_relative 'high_low'
require_relative 'slots'
                
class Games
  attr_accessor :games, :price, :casino

  def initialize(casino, player)
    @player = player
    @casino = casino
    @selection_options = [ { game: 'Dice',   price: '$10'},
                           { game: 'Slots', price: '$15'},
                           { game: 'Card Guess', price: '$15'}
                         ]
    puts "What game do you want to play?"
    @selection_options.each_with_index do |options, index|
      puts "#{index + 1} #{options[:game]} #{options[:price]}".colorize(:green)
    end
    @user_input = gets.chomp.to_i
    if @user_input == 1
      @player.wallet.lose(10)
      puts "Your balance is now $#{@player.wallet.amount}"
      Dice.new(@casino, @player)
    elsif @user_input == 2
      @player.wallet.lose(15)
      puts "Your balance is now $#{@player.wallet.amount}"
      Slots.new(@casino, @player)
    elsif @user_input == 3
      @player.wallet.lose(15)
      puts "Your balance is now $#{@player.wallet.amount}"
      HighLow.new(@casino, @player)
    else 
      puts "invalid"
      initialize 
    end 
  end
end
  
