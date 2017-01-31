require 'colorize'
require 'pry'

class Dice
  attr_accessor :dice1, :dice2
  

 def initialize(casino)
   @casino = casino
   puts "you're about to play dice!".colorize
   roll
 end

 def roll
  @dice1 = [1,2,3,4,5,6]
  puts "Pick a number between 1 and 6, if you pick the correct number, you win!"
  puts "Put your number of choice, press RETURN to roll die"
  user_guess = gets.chomp.to_i
  puts "dice rolling...."
  @dice1.sample 
  puts "#{@dice1.sample}"
    if user_guess == @dice1.sample
      puts "you win"
    else
      puts "you lose"
    end
  exit_to_menu
  end

  def exit_to_menu
    puts "Would you like to play Dice again?"
    user_input = gets.chomp.downcase
    if user_input == "yes"
      roll
    elsif user_input == "no"
      @casino.menu
    else 
      puts "Invalid choice, try again"
      exit_to_menu
    end
  end
end
