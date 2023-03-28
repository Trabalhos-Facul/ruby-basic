module MovieReviewer
  def self.review(movie)
    act_thumbs = act_to_thumbs(roll_dice)

    if act_thumbs
      thumbs_action = movie.method(act_thumbs)
      thumbs_action.call
    end
  end

  def self.act_to_thumbs(number_rooled)
    if number_rooled >= 5
      :thumbs_up!
    elsif number_rooled < 3
      :thumbs_down!
    end
  end

  def self.roll_dice
    rand(1..6)
  end
end