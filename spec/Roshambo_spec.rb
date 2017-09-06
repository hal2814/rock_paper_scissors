
require("rspec")
require("pry")
require("Roshambo")


describe ("Roshambo") do
  rps = Roshambo.new("Nate","Riki")
  it("returns true if rock is the object and scissors is the argument") do
    expect(rps.beats?("rock", "scissors")).to(eq(true))
  end

  it("returns true if paper is the object and rock is the argument") do
    expect(rps.beats?("paper","rock")).to(eq(true))
  end

  it("returns true if scissors is the object and paper is the argument") do
    expect(rps.beats?("scissors","paper")).to(eq(true))
  end
end
