class Game

  attr_accessor :hand_1, :hand_2
  def initialize (hand_1,hand_2)
    @hand_1 = hand_1
    @hand_2 = hand_2
  end

  def check_hands()
    result = 'Draw' if @hand_1 == @hand_2
    if @hand_1 == 'rock' && @hand_2 == 'paper'
      result = 'paper!'
    elsif @hand_1 == 'paper' && @hand_2 == 'rock'
      result = 'paper!'
    elsif @hand_1 == 'rock' && @hand_2 == 'scizzors'
      result = 'rock!'
    elsif @hand_1 == 'scizzors' && @hand_2 == 'rock'
      result = 'rock!'
    elsif @hand_1 == 'scizzors' && @hand_2 == 'paper'
      result = 'scizzors!'
    elsif @hand_1 == 'paper' && @hand_2 == 'scizzors'
      result = 'scizzors!'
    end
    return result
  end


end
