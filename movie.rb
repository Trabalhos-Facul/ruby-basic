class Movie
  attr_reader :title, :rank

  def initialize(title, rank=0)
    @title = title.capitalize
    @rank = rank
  end

  def to_s
    "#{@title} has a rank of #{@rank}"
  end

  def thumbs_up!
    @rank += 1
  end

  def thumbs_down!
    @rank -= 1
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