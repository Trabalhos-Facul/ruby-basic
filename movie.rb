class Movie
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

class Playlist
  def initialize(name)
    @name = name
    @movies = []
  end

  def add_movie(movie)
    @movies << movie
  end

  def play!
    puts "#{@name}'s playlist:"
    puts @movies

    @movies.each do |movie|
      movie.thumbs_up!
      puts movie
    end
  end
end

movie1 = Movie.new("Astro", 7)

playlist1 = Playlist.new("Trilogia senhor dos aneis")

playlist1.add_movie(movie1)
# playlist1.add_movie(movie2)
# playlist1.add_movie(movie3)

playlist1.play!

puts movie1