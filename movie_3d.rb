require_relative 'movie'

class Movie3D < Movie
  def initialize(title, rank, wow_factor)
    super(title, rank)
    @wow_factor = wow_factor
  end

  def thumbs_up!
    @wow_factor.times { super }
  end

  def thumbs_down
    @wow_factor.times { super }
  end
end


movie = Movie3D.new("glee", 5, 3)
puts movie.rank
movie.thumbs_up!
puts movie.rank

