class Player

  DEFAULT_HIT_POINTS = 60
  def initialize(name)
    @name = name
    @score = DEFAULT_HIT_POINTS
  end

  def show_name
    @name
  end

  def get_score
    @score
  end

  def decrease_score
    @score -= Random.rand(1..10)
  end

  def increase_score
    @score += Random.rand(1..10)
  end

  def receive_damage(move)
    (move.to_i).times do
      decrease_score
    end
  end

end
