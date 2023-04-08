require_relative 'playlist'

playlist1 = Playlist.new("Trilogia senhor dos aneis")

playlist1.load(ARGV.shift || "movies.csv")

loop do
  puts "\nHow many viewings?"
  answer = gets.chomp.downcase

  if answer =~ /^\d+$/
    playlist1.play!(answer.to_i)

  elsif %w[quit exit].include?(answer)
    playlist1.print_stats
    break

  else
    puts "Please enter a number or 'quit'"
  end
end

playlist1.save
