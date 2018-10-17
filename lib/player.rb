class Player

  DEFAULT_HIT_POINTS = 60
  def initialize(name)
    @name = name
    @score = DEFAULT_HIT_POINTS
  end

  def show_name
    @name
  end

  def show_score
    @score
  end

  def decrease_score
    @score -= 10
  end

  def receive_damage
    decrease_score
  end

end
