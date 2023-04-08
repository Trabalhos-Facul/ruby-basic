require_relative 'playlist'
require_relative 'movie_3d'

playlist = Playlist.new("Trilogia senhor dos aneis")

playlist.load(ARGV.shift || "movies.csv")
movie3d = Movie3D.new("glee", 5, 3)
playlist.add_movie(movie3d)

loop do
  puts "\nHow many viewings?"
  answer = gets.chomp.downcase

  if answer =~ /^\d+$/
    playlist.play!(answer.to_i)

  elsif %w[quit exit].include?(answer)
    playlist.print_stats
    break

  else
    puts "Please enter a number or 'quit'"
  end
end

playlist.save
