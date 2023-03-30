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

  def play(rounds)
    puts "There are #{@players.length} players in #{@name}:"
    1.upto(rounds) do |round|
      puts "\nRound #{round}:"
      @players.each do |player|
        GameTurn.take_turn(player)
        puts player
      end
    end
  end

  def statistics
    puts "#{@name}'s statistics:"
    strongs, weaks = @players.partition(&:strong?)

    puts "\nStrong players:"
    strongs.each do |player|
      puts "#{player.name} (#{player.health})"
    end

    puts "\nWeak players:"
    weaks.each do |player|
      puts "#{player.name} (#{player.health})"
    end
  end
end