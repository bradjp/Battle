require_relative 'player'

class Game

  attr_reader :current_turn

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
    @current_turn = player_1
  end

  def player_1
    @players[0]
  end

  def player_2
    @players[1]
  end


  def attack(player)
    player.damaged
  end

  def swap_turns
    @current_turn = invert(current_turn)
  end

  def invert(player)
    return player_1 if player == player_2
    player_2
  end

end