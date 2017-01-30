require 'pry'
require 'colorize'
require 'artii'
require_relative 'player'

class Casino
  # Todo: handle multiple players
  # Hint: Think array
  attr_accessor :player

  def initialize # .new always goes back to initialize
    puts 'Welcome To The Casino'.colorize(:blue)
    @player = Player.new
    puts "What game do you want to play #{player.name}?"
    menu
    # show a casino game menu
    # let the player choose a game
    # initialize the new game passing the player as a parameter
  end

  def menu
    puts '*** CASINO MENU ***'
  end
end

Casino.new
