require_relative 'movie'

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
      act_thumbs = act_to_thumbs(roll_dice)

      if act_thumbs
        thumbs_action = movie.method(act_thumbs)
        thumbs_action.call
      end

      puts movie
    end
  end

  def roll_dice
    rand(1..6)
  end

  def act_to_thumbs(number_rooled)
    if number_rooled >= 5
      :thumbs_up!
    elsif number_rooled < 3
      :thumbs_down!
    end
  end
end
