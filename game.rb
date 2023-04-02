require_relative 'player'
require_relative 'game_turn'
require_relative 'treasure_trove'

class Game
  def initialize(name)
    @name = name.capitalize
    @players = []
  end

  def add_player(new_player)
    @players << new_player
  end

  def play(rounds)
    puts "There are #{@players.length} players in #{@name}:"

    treasures = TreasureTrove::TREASURES

    treasures.each do |treasure|
      puts "A #{treasure.name} is worth #{treasure.points} points."
    end

    1.upto(rounds) do |round|
      puts "\nRound #{round}:"
      @players.each do |player|
        GameTurn.take_turn(player)
        puts player
      end
    end
  end

  def statistics
    puts "#{@name}'s Scores:"

    @players.sort.each do |player|
      puts "#{player.name}'s point totals:"
      puts "#{player.points} grand total points"
    end
  end
end