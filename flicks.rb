require_relative 'playlist'

movie1 = Movie.new("Astro", 7)

playlist1 = Playlist.new("Trilogia senhor dos aneis")

playlist1.add_movie(movie1)
# playlist1.add_movie(movie2)
# playlist1.add_movie(movie3)

playlist1.play!

puts movie1