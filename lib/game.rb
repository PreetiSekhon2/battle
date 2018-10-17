require "./lib/player.rb"

class Game
  attr_reader :player1, :player2
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @current_attacked = player2
  end

  def attack(player)
    player.receive_damage
  end

  def get_current_attacked
    @current_attacked
  end

  def complete?
    @player1.get_score == 0 || @player2.get_score == 0 ? true : false
  end

  def get_winner
    if @player1.get_score == 0
      return @player2
    elsif @player2.get_score == 0
      return @player1
    else raise ("No winner!")
    end
  end

  def switch_attacked
    if @current_attacked == @player1
      @current_attacked = @player2
    else @current_attacked = @player1
    end
  end

end
