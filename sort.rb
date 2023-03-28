require_relative 'movie'

movie1 = Movie.new("Astro", 7)
movie2 = Movie.new("Titanic", 2)
movie3 = Movie.new("Matrix", 5)

movies = [movie1, movie2, movie3]

puts movies.sort