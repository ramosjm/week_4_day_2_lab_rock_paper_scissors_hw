class Game

  attr_accessor :hand_1, :hand_2
  def initialize (hand_1,hand_2)
    @hand_1 = hand_1
    @hand_2 = hand_2
  end

  def check_hands()
    result = 'Draw -- Try again' if @hand_1 == @hand_2
    if @hand_1 == 'rock' && @hand_2 == 'paper'
      result = 'Player 2 wins with Paper!'
    elsif @hand_1 == 'paper' && @hand_2 == 'rock'
      result = 'Player 1 wins with Paper!'
    elsif @hand_1 == 'rock' && @hand_2 == 'scissors'
      result = 'Player 1 wins with Rock!'
    elsif @hand_1 == 'scissors' && @hand_2 == 'rock'
      result = 'Player 2 wins with Rock!'
    elsif @hand_1 == 'scissors' && @hand_2 == 'paper'
      result = 'Player 1 wins with Scissors!'
    elsif @hand_1 == 'paper' && @hand_2 == 'scissors'
      result = 'Player 2 wins with Scissors!'
    end
    return result
  end

end
