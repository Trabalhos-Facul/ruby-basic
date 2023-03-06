class Player
  attr_accessor :name
  attr_reader :health

  def initialize(name, health=100)
    @name = name.capitalize
    @health = health
  end

  def score
    @health + @name.length
  end
  def to_s
    "I'm #{@name} with a health of #{@health} and a score of #{score}."
  end
end

player1 = Player.new("moe")
player2 = Player.new("larry", 60)
player3 = Player.new("curly", 125)

players = [player1, player2, player3]

puts "There are 3 players in the game:"
puts players

players.each do |player|
  puts player.health
end
