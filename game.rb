require_relative 'player'
require_relative 'game_turn'
require_relative 'treasure_trove'

class Game
  def initialize(name)
    @name = name.capitalize
    @players = []
  end

  def load_players(from_file)
    File.readlines(from_file).each do |line|
      add_player(Player.from_csv(line))
    end
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

  def save_high_scores(to_file="high_scores.txt")
    File.open(to_file, "w") do |file|
      file.puts "#{@name} High Scores:"
      @players.sort.each do |player|
        file.puts high_score_entry(player)
      end
    end
  end

  def high_score_entry(player)
    formatted_name = player.name.ljust(20, '.')
    "#{formatted_name} #{player.score}"
  end

  def statistics
    puts "#{@name}'s Scores:"

    @players.sort.each do |player|
      puts "#{player.name}'s point totals:"
      player.each_treasure do |treasure|
        puts "#{treasure.points} of #{treasure.name}"
      end
      puts "#{player.points} grand total points"
    end
  end
end