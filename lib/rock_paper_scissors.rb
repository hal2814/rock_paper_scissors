#! user/bin/env ruby
class String
  def beats?(contender)
    rps = self;
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
end
