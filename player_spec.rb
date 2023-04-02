require_relative 'player'
require_relative 'treasure_trove'

describe Player do

  before do
    @name = "catarina"
    @initial_health = 100
    @player = Player.new(@name)
  end

  it "has a capitalized name" do
    expect(@player.name).to eq(@name.capitalize)
  end

  it "has an initial health" do
    expect(@player.health).to eq(@initial_health)
  end


  it "has a string representation" do
    @player.found_treasure(Treasure.new(:hammer, 50))
    @player.found_treasure(Treasure.new(:hammer, 50))

    expect(@player.to_s).to eq("I'm #{@name.capitalize} with a health = #{@initial_health}, points = 100, and a score = 200.")
  end

  it "increases health by 15 when w00ted" do
    @player.w00t

    expect(@player.health).to eq(@initial_health + 15)
  end

  it "decreases health by 10 when blammed" do
    @player.blam

    expect(@player.health).to eq(@initial_health - 10)
  end

  it "computes points as the sum of all treasure points" do
    @player.points.should == 0

    @player.found_treasure(Treasure.new(:hammer, 50))

    @player.points.should == 50

    @player.found_treasure(Treasure.new(:crowbar, 400))

    @player.points.should == 450

    @player.found_treasure(Treasure.new(:hammer, 50))

    @player.points.should == 500
  end

  it "computes a score as the sum of its health and points" do
    @player.found_treasure(Treasure.new(:hammer, 50))
    @player.found_treasure(Treasure.new(:hammer, 50))

    @player.score.should == @initial_health + 100
  end

  context "power" do

    before do
      @player1 = Player.new("carlos", 150)
      @player2 = Player.new("flavio", 101)
      @player3 = Player.new("andre", 100)
    end

    it "is strong" do
      expect(@player1).to be_strong
      expect(@player2).to be_strong
    end

    it "is weak" do
      expect(@player3).to be_weak
    end
  end
end