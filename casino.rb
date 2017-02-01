require 'pry'
require 'colorize'
require 'artii'
require_relative 'player'
require_relative 'games'

class Casino
  attr_accessor :player

  def initialize 
    a = Artii::Base.new 
    puts a.asciify("Welcome to the Casino").colorize(:green)
    @player = Player.new
    puts "Get ready to play #{player.name}."
    menu
  end

  def menu
    puts "\n\n*** CASINO MENU ***\n".colorize(:yellow)
    @games = Games.new(self, @player)
  end
end
Casino.new


