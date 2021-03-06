require('minitest/autorun')
require('minitest/rg')
require_relative('../models/game.rb')

class GameTest < MiniTest::Test

  def setup()
    @hand_1 = 'rock'
    @hand_2 = 'paper'
    @hand_3 = 'scissors'
    @game_1 = Game.new(@hand_1,@hand_2) #hand 2 - paper should beat rock
    @game_2 = Game.new(@hand_2,@hand_3) #hand 3 - scizzors should beat paper
    @game_3 = Game.new(@hand_2,@hand_1) #paper wins
    @game_4 = Game.new(@hand_3,@hand_2) #scizzors win
    @game_5 = Game.new(@hand_1,@hand_3) #rock wins
    @game_6 = Game.new(@hand_3,@hand_1) #rock wins
    @draw = Game.new(@hand_1,@hand_1)

  end

  def test_check_hands__rock_vs_paper
    assert_equal('Player 2 wins with Paper!',@game_1.check_hands())
  end

  def test_check_hands__paper_vs_scissors
    assert_equal('Player 2 wins with Scissors!',@game_2.check_hands())
  end

  def test_check_hands__paper_vs_rock
    assert_equal('Player 1 wins with Paper!',@game_3.check_hands())
  end

  def test_check_hands__scizzors_vs_paper
    assert_equal('Player 1 wins with Scissors!',@game_4.check_hands())
  end

  def test_check_hands__rock_vs_scissors
    assert_equal('Player 1 wins with Rock!',@game_5.check_hands())
  end

  def test_check_hands__scissors_vs_rock
    assert_equal('Player 2 wins with Rock!',@game_6.check_hands())
  end

  def test_check_hands_draw
    assert_equal('Draw -- Try again',@draw.check_hands())
  end


end
