require_relative 'wallet'

class Player
  attr_accessor :name, :wallet

  def initialize
    puts 'What is your first name playa?'
    @name = gets.strip 
    @wallet = Wallet.new
  end 
end


