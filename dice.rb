require 'colorize'
require 'pry'


class Dice
 attr_accessor :dice1, :dice2


  def initialize(casino, player)
    @player = player
    @casino = casino
    a = Artii::Base.new 
    puts a.asciify('Dice').colorize(:yellow)
    roll
  end

  def roll
 
    puts "Pick a number between 1 and 6, if you pick the correct number, you win!"
    puts "Put your number of choice, press RETURN to roll die"
    user_guess = gets.chomp.to_i
    puts "dice rolling...." 
    @die_final = Random.rand(1..6)
    puts "#{@die_final}"
 
    if user_guess == @die_final
      puts "you win $10".colorize(:green)
      @player.wallet.win(10)
      puts "your balance is $#{@player.wallet.amount}".colorize(:green)
    else user_guess != @die_final
      puts "you lose $20".colorize(:red)
      @player.wallet.lose(20)
      puts "your balance is $#{@player.wallet.amount}".colorize(:red)
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















# require 'colorize'
# require 'pry'

# class Dice
#   attr_accessor :dice1, :dice2
  

#  def initialize(casino)
#    @casino = casino
#    puts "You're about to play Dice!".colorize(:red)
#    roll
#  end

#  def roll(amount)
#   @dice1 = [1,2,3,4,5,6]
#   @amount = amount
#   puts "Pick a number between 1 and 6, if you pick the correct number, you win!"
#   puts "Put your number of choice, press RETURN to roll die"
#   user_guess = gets.chomp.to_i
#   puts "dice rolling...."
#   @dice1.sample 
#   puts "#{@dice1.sample}"
#     if user_guess == @dice1.sample
#       puts "you win"
     
#     else
#       puts "you lose"
     
#     end
#   exit_to_menu
#   end

#   def exit_to_menu
#     puts "Would you like to play Dice again?"
#     user_input = gets.chomp.downcase
#     if user_input == "yes"
#       roll
#     elsif user_input == "no"
#       @casino.menu
#     else 
#       puts "Invalid choice, try again"
#       exit_to_menu
#     end
#   end
# end
