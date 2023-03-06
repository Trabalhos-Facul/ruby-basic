class Player
  def initialize(name, health=100)
    @name = name.capitalize
    @health = health
  end
  def to_s
    "I'm #{@name} with a health of #{@health}"
  end
end

p = Player.new("anna", 30)

puts p

