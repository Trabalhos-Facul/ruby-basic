class Movie
  attr_reader :title, :rank

  def initialize(title, rank=0)
    @title = title.capitalize
    @rank = rank
    @snacks = Hash.new(0)
  end

  def to_s
    "#{@title} has a rank of #{@rank}(#{status})"
  end

  def <=>(other)
    other.rank <=> @rank
  end

  def thumbs_up!
    @rank += 1
  end

  def thumbs_down!
    @rank -= 1
  end

  def status
    hit? ? "Hit" : "Flop"
  end

  def hit?
    @rank >= 10
  end

  def carbs_consumed
    @snacks.values.reduce(0, :+)
  end

  def ate_snack(snack)
    @snacks[snack.name] += snack.carbs
  end
end

if __FILE__ == $0
  movie = Movie.new("movie1")
  puts movie.title

  movie.thumbs_up!
  puts movie.rank

  movie.thumbs_down!
  puts movie.rank

  puts movie
end