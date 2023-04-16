require_relative 'player'
require_relative 'treasure_trove'

class ClumsyPlayer < Player
  def found_treasure(treasure)
    clumsy_treasure = Treasure.new(treasure.name, treasure.points / 2)
    super(clumsy_treasure)
  end
end
