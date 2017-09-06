#! user/bin/env ruby
class Roshambo
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def beats?(rps, contender)
    if rps == "rock" && contender == "scissors"
      return true
    elsif rps == "rock" && contender == "paper"
      return false
    elsif rps == "scissors" && contender == "paper"
      return true
    elsif rps == "scissors" && contender == "rock"
      return false
    elsif rps == "paper" && contender == "rock"
      return true
    elsif rps == "paper" && contender == "scissors"
      return false
    else
      puts "please enter rock, paper, or scissors (only once each)"
    end
  end

  def game
    puts @player1 + ' Choose your roshambo!'
    input1 = gets.chomp
    # binding.pry
    puts @player2 + ' Choose your roshambo!'
    input2 = gets.chomp
    if beats?(input1, input2)
      puts @player1 + " Wins!"
      return true
    else
      puts @player2 + " Wins!"
      return false
    end
  end
end
