require_relative 'movie'

movie1 = Movie.new("Astro", 7)
movie2 = Movie.new("Titanic", 10)
movie3 = Movie.new("Matrix", 5)

movies = [movie1, movie2, movie3]

File.open("movie_rankings.csv", "w") do |file|
  movies.sort.each do |movie|
    file.puts "#{movie.title},#{movie.rank}"
  end
end
