require 'pry'
require 'artii'
require 'colorize'

class HighLow
  attr_accessor :rank, :suit, :red_black, :casino
  
  def initialize(casino) 
    @casino = casino
    puts "You're about to play High or Low with cards."
    shuffle
  end

  def shuffle
    @rank = [2,3,4,5,6,7,8,9,10,'j', 'q', 'k'] 
    @suit = ['hearts', 'spades', 'clubs', 'diamonds']
    @red_black = ['red', 'black']
    puts "Shuffling cards...."
    puts "Pick a card. Type rank first"
    @user_input = gets.chomp
    puts "Now pick a suit"
    @user_input2 = gets.chomp
    puts "Now pick a color"
    @user_input3 = gets.chomp
    puts "Your card is #{@user_input} #{@user_input2} #{@user_input3}"
    puts "Our card is #{@rank.sample} #{@suit.sample} #{@red_black.sample}"
    compare
  end
  def compare
      @user_choice = [@user_input, @user_input2, @user_input3]
      @comp_choice = [@rank.sample, @suit.sample, @red_black.sample]
      if @user_choice == @comp_choice 
        puts "you win!!!!"
      else 
        puts "you lose!!"
      end
      play_again
  end
  def play_again
      puts "Would you like to play the game with horrible odds again? (1 for YES or 2 for NO)"
      user_input = gets.chomp.downcase
      if user_input == "yes"
        shuffle
      elsif user_input == "no"
        @casino.menu   
      else
        puts "Invalid choice, try again"
        play_again
      end
  end
end