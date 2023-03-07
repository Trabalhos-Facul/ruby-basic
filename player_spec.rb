require_relative 'player'

describe Player do

  before do
    @name = "catarina"
    @initial_health = 100
    @score = 108
    @player = Player.new(@name)
  end

  it "has a capitalized name" do
    expect(@player.name).to eq(@name.capitalize)
  end

  it "has an initial health" do
    expect(@player.health).to eq(@initial_health)
  end

  it "computes a score as the sum of its health and length of name" do
    expect(@player.score).to eq(@score)
  end

  it "has a string representation" do
    expect(@player.to_s).to eq("I'm #{@name.capitalize} with a health of #{@initial_health} and a score of #{@score}.")
  end

  it "increases health by 15 when w00ted" do
    @player.w00t

    expect(@player.health).to eq(@initial_health + 15)
  end

  it "decreases health by 10 when blammed" do
    @player.blam

    expect(@player.health).to eq(@initial_health - 10)
  end
end