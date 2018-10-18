require "./lib/player.rb"

class Game

  attr_reader :player1, :player2

  def self.instance
    @game
  end

  def self.create(player_1, player_2)
    @game = Game.new(player_1, player_2)
  end

  def attack(player,move, paralyse = "N")
    player.receive_damage(move)
    @move = move
    if paralyse.to_s.upcase == "Y"
      @paralyse = true
    else
      @paralyse = false
    end
  end

  def get_move
   @move
 end

  def paralyse?
    @paralyse == true ? true : false
  end

  def get_bonus
    @bonus
  end

  def get_current_attacked
    @current_attacked
  end

  def get_current_attacker
    @current_attacker
  end

  def complete?
    @player1.get_score <= 0 || @player2.get_score <= 0 ? true : false
  end

  def get_winner
    raise ("No winner as not complete!") if !complete?
    @player1.get_score > @player2.get_score ? @player1 : @player2
  end

  def switch_turn
    @bonus = false
    if @current_attacked == @player1
      @current_attacked = @player2
      @current_attacker = @player1
    else
      @current_attacked = @player1
      @current_attacker = @player2
    end
    @bonus = [true,false].sample
    bonus_points if @bonus
  end

  def bonus_points
    @current_attacker.increase_score
  end

  private

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @current_attacked = player2
    @current_attacker = player1
    @bonus = false
  end
end
