require_relative 'game'

describe Game do

  before do
    @game = Game.new("Knuckleheads")

    @initial_health = 100
    @player = Player.new("moe", @initial_health)

    @game.add_player(@player)
  end

  it "w00ts the player if a high number is rolled" do
    allow_any_instance_of(Dice).to receive(:roll).and_return(5)
    rounds = 2

    @game.play(rounds)

    @player.health.should == @initial_health + (15 * 2)
  end

  it "do nothing if a medium number is rolled" do
    allow_any_instance_of(Dice).to receive(:roll).and_return(3)
    rounds = 2

    @game.play(rounds)

    @player.health.should == @initial_health
  end

  it "blams the player if a low number is rolled" do
    allow_any_instance_of(Dice).to receive(:roll).and_return(2)
    rounds = 2

    @game.play(rounds)

    @player.health.should == @initial_health - (10 * 2)
  end
end