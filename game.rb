require_relative 'player'
require_relative 'dice'

class Game
  def initialize(name)
    @name = name.capitalize
    @players = []
  end

  def add_player(new_player)
    @players << new_player
  end

  def play
    puts "There are #{@players.length} players in #{@name}:"

    dice = Dice.new
    @players.each do |player|
      player.w00t if dice.roll >= 5
      player.blam if dice.roll < 3
      puts player
    end
  end
end