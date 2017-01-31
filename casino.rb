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
    # show a casino game menu
    # let the player choose a game
    # initialize the new game passing the player as a parameter
  end

  def menu
    puts "*** CASINO MENU ***"
    @games = Games.new
  end
end
# @games = Games.new
Casino.new


