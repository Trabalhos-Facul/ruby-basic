require_relative 'player'

class Game
  def initialize(name)
    @name = name.capitalize
    @players = []
  end

  def add_player(new_player)
    @players << new_player
  end

  def die_roll
    rand(1..6)
  end

  def play
    puts "There are #{@players.length} players in #{@name}}:"
    @players.each do |player|
      player.w00t if die_roll >= 5
      player.blam if die_roll < 3
      puts @player
    end
  end
end