require_relative 'rankable'
class Movie
  include Rankable

  attr_accessor :rank
  attr_reader :title

  def initialize(title, rank=0)
    @title = title.capitalize
    @rank = rank
    @snacks = Hash.new(0)
  end

  def self.from_file(line)
    title, rank = line.split(',')
    Movie.new(title, Integer(rank))
  end

  def each_snack
    @snacks.each do |name, carbs|
      snack = Snack.new(name, carbs)
      yield(snack)
    end
  end

  def to_csv
    "#{@title},#{@rank}"
  end

  def to_s
    "#{@title} has a rank of #{@rank}(#{status})"
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