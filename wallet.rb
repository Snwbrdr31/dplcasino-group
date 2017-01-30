class Wallet
  attr_accessor :amount

  def initialize
    puts "Press 1 for random, press 2 for own amount"
    user_input = gets.chomp.to_i
    case user_input
    when 1
      @amount = Random.rand(500)
    when 2
      @amount = wallet_begin
    else 
      "invalid choice"
      initialize
    end
  end

  def wallet_begin
    puts 'What amount are you playing with?'
    gets.to_f
  end
end


