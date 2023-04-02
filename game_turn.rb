require_relative 'player'
require_relative 'dice'
require_relative 'treasure_trove'

module GameTurn
  def self.take_turn(player)
    dice = Dice.new
    player.w00t if dice.roll >= 5
    player.blam if dice.roll < 3
    treasure_found = TreasureTrove.random
    puts "#{player.name} found a #{treasure_found.name} worth #{treasure_found.points} points."
  end
end