require 'pry'
require 'colorize'
require 'artii'
require_relative 'player'
require_relative 'games'



class Casino
  # Todo: handle multiple players
  # Hint: Think array
  attr_accessor :player

  def initialize # .new always goes back to initialize
    puts 'Welcome To The Casino'.colorize(:green)
    @player = Player.new
    puts "What game do you want to play #{player.name}?"
    menu
  end

  def menu
    puts "*** CASINO MENU ***".colorize(:yellow)
    @games = Games.new(self)
  end
end
# @games = Games.new
Casino.new


