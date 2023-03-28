require_relative 'player'
require_relative 'dice'

module GameTurn
  def self.take_turn(player)
    dice = Dice.new
    player.w00t if dice.roll >= 5
    player.blam if dice.roll < 3
  end
end