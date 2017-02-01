class Wallet
  attr_accessor :amount

  def initialize
    puts "How much money do you want to play with? Type 1 for a random amount, type 2 own amount."
    user_input = gets.chomp.to_i
    case user_input
    when 1
      @amount = Random.rand(500)
      puts "Your total wallet amount is $#{@amount}".colorize(:green)  
    when 2
      wallet_begin
    else 
      "Invalid choice, please try again"
      initialize
    end
  end

  def wallet_begin
    puts 'What amount are you playing with?'
    @amount = gets.chomp.to_i 
    puts "Your wallet amount is $#{@amount}".colorize(:green)
  end
 
  def win(amt)
    @amount += amt
  end

  def lose(amt)
    @amount -= amt
  end

  def total
    @amount
  end 
end


