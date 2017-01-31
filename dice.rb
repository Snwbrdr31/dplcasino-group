class Dice
  attr_accessor :dice1, :dice2
  

 def initialize
   puts "you're about to play dice"
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
    # add to wallet balance array 
  else
    puts "you lose"
    # subtract from wallet balance
  end
 end
end
