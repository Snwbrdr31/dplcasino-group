require 'pry'
require 'artii'
require 'colorize'

class Slots
  attr_accessor :slot_images
  
  def initialize(casino, player)
    @casino = casino
    @player = player
    
    @slot_images = ['Cherry', 'Orange', 'Plum', '7', 'Double Cherrys', 'Bell']
    a = Artii::Base.new 
    puts a.asciify("Slots !").colorize(:light_blue)
    run
  end

  def run
    puts "How much would you like to bet?"
    @bet = gets.chomp.to_i
    puts "Your bet is $#{@bet}, press RETURN to spin slots."
    @slot_image1 = @slot_images.sample
    @slot_image2 = @slot_images.sample
    @slot_image3 = @slot_images.sample
    puts "#{@slot_image1} - #{@slot_image2} - #{@slot_image3}"
    multiplier
  end

  def multiplier
    if @slot_image1 == @slot_image2 && @slot_image2 == @slot_image3
      @winnings = @bet * 4
      puts "You won $#{@winnings}!".colorize(:green)
      @player.wallet.win(@winnings)
      puts "Your balance is $#{@player.wallet.total}".colorize(:green)
    elsif @slot_image1 == @slot_image2 || @slot_image2 == @slot_image3 || @slot_image1 == @slot_image3
      @winnings = @bet * 3
      puts "You won $#{@winnings}!".colorize(:green)
      @player.wallet.win(@winnings)
      puts "Your balance is $#{@player.wallet.total}".colorize(:green)    
    else 
      @winnings = @bet * 2
      puts "You lost $#{@winnings}".colorize(:red)
      @player.wallet.lose(@winnings)
      puts "Your balance is $#{@player.wallet.total}".colorize(:red)
    end
    exit_game
  end

  def exit_game
    puts "Do you want to play slots again?"
    user_input = gets.chomp.downcase
    if user_input == 'yes'
      run
    elsif user_input == 'no'
      @casino.menu
    else 
      puts "Invalid choice, try again"
      exit_game
    end
  end
end 


   
