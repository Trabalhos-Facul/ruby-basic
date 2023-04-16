require_relative 'player'

class BerserkPlayer < Player
  def initialize(name, health=100)
    super(name, health)
    @w00ted_count = 0
  end

  def w00t
    super
    @w00ted_count += 1
  end

  def blam
    if berserk?
      w00t
    else
      super
    end
  end

  def berserk?
    @w00ted_count > 5
  end
end
