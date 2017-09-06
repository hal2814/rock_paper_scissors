
require("rspec")
require("pry")
require("Roshambo")


describe ("Roshambo") do
  rps = Roshambo.new("Nate","Riki")
  # Original Test
  it("returns true if rock is the object and scissors is the argument") do
    expect(rps.beats?("rock", "scissors")).to(eq(true))
  end

  it("returns true if paper is the object and rock is the argument") do
    expect(rps.beats?("paper","rock")).to(eq(true))
  end

  it("returns true if scissors is the object and paper is the argument") do
    expect(rps.beats?("scissors","paper")).to(eq(true))
  end

  #Game test
  it("returns true if player 1 enters 'rock' and player2 enters 'scissors'") do
    expect(rps.game).to(eq(true))
  end

  it("returns true if player 1 enters 'rock' and player2 enters 'paper'") do
    expect(rps.game).to(eq(false))
  end

  it("returns true if player 1 enters 'paper' and player2 enters 'rock'") do
    expect(rps.game).to(eq(true))
  end
end
