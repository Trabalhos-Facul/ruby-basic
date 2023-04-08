require_relative 'game'

knuckleheads = Game.new("Knuckleheads")
knuckleheads.load_players(ARGV.shift || "players.csv")

loop do
  puts "\nHow many game rounds? ('quit' to exit)"
  answer = gets.chomp.downcase

  if answer.match?(/\d+/)
    knuckleheads.play(answer.to_i)
  elsif %w[quit exit].include?(answer)
    break
  else
    puts "Please enter a number or 'quit'"
  end
end

knuckleheads.save_high_scores