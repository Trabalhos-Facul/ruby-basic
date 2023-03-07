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