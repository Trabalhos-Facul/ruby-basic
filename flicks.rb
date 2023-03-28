require_relative 'playlist'

movie1 = Movie.new("Astro", 7)
movie2 = Movie.new("Titanic", 10)
movie3 = Movie.new("Matrix", 5)

playlist1 = Playlist.new("Trilogia senhor dos aneis")

playlist1.add_movie(movie1)
playlist1.add_movie(movie2)
playlist1.add_movie(movie3)

playlist1.play!(3)
playlist1.print_stats