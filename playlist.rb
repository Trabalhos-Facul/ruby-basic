require_relative 'movie'
require_relative 'movie_reviewer'

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
      MovieReviewer.review(movie)
      puts movie
    end
  end
end
