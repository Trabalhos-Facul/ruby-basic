class Player
  attr_accessor :name
  attr_reader :health

  def initialize(name, health=100)
    @name = name.capitalize
    @health = health
  end

  def strong?
    @health > 100
  end

  def weak?
    !strong?
  end

  def score
    @health + @name.length
  end

  def to_s
    "I'm #{@name} with a health of #{@health} and a score of #{score}."
  end

  def w00t
    @health += 15
  end

  def blam
    @health -= 10
  end
end