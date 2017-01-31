require_relative 'dice'
                  #   { game: 'Blackjack', price: 20.00},
                  #   { game: 'Roulette', price: 3.00},
                  #   { game: 'Uno', price: 1.00},
                  # ]
class Games
  attr_accessor :games, :price
  def initialize
    @selection_options = [ { game: 'Dice',   price: 2.00},
                           { game: 'Slots', price: 3.00}
                         ]
    puts "What game do you want to play?"
    @selection_options.each_with_index do |options, index|
      puts "#{index + 1} #{options[:game]} #{options[:price]}"
     end
    @selection_options = gets.chomp.to_i
     if @selection_options == 1
       Dice.new
     elsif @selection_options == 2
        Slots.new
      else 
        puts "invalid"
        initialize 
      end 
    end
  end
  
