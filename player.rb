class Player
  attr_accessor :name
  attr_reader :health

  def initialize(name, health=100)
    @name = name.capitalize
    @health = health
    @found_treasure = Hash.new(0)
  end

  def each_treasure
    @found_treasure.each do |name, points|
      treasure = Treasure.new(name, points)
      yield(treasure)
    end
  end

  def strong?
    @health > 100
  end

  def weak?
    !strong?
  end

  def score
    @health + points
  end

  def <=>(other)
    other.score <=> score
  end

  def to_s
    "I'm #{@name} with a health = #{@health}, points = #{points}, and a score = #{score}."
  end

  def w00t
    @health += 15
  end

  def blam
    @health -= 10
  end

  def found_treasure(treasure)
    @found_treasure[treasure.name] += treasure.points
    puts "#{@name} found a #{treasure.name} worth #{treasure.points} points."
    puts "#{@name}'s treasures: #{@found_treasure}"
  end

  def points
    @found_treasure.values.reduce(0, :+)
  end
end