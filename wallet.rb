class Wallet
  attr_accessor :amount

  def initialize
    puts "Press 1 for random, press 2 for own amount"
    user_input = gets.chomp.to_f
    case user_input
    when 1
      @amount = Random.rand(500.00)
      puts "Your total wallet amount is $#{Random.rand(500)}"
      
    when 2
      wallet_begin
    else 
      "invalid choice, please try again"
      initialize
    end
  end

  def wallet_begin
    puts 'What amount are you playing with?'
    @amount = gets.chomp.to_f 
    puts "Your wallet amount is $#{@amount}"
  end
  def win_and_lose
    #creat array for total amount, which you can add or subtract from balance.
  end
  
  
    
end


