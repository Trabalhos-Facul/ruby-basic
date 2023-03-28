require_relative 'player'
require_relative 'game_turn'

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
    @players.each do |player|
      GameTurn.take_turn(player)
      puts player
    end
  end
end