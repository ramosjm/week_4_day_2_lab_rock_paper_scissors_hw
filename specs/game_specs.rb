require('minitest/autorun')
require('minitest/rg')
require_relative('../models/game.rb')

class GameTest < MiniTest::Test

  def setup()
    @hand_1 = 'rock'
    @hand_2 = 'paper'
    @hand_3 = 'scizzors'
    @game_1 = Game.new(@hand_1,@hand_2) #hand 2 - paper should beat rock
    @game_2 = Game.new(@hand_2,@hand_3) #hand 3 - scizzors should beat paper
    @game_3 = Game.new(@hand_2,@hand_1) #paper wins
    @game_4 = Game.new(@hand_3,@hand_2) #scizzors win
    @game_5 = Game.new(@hand_1,@hand_3) #rock wins
    @game_6 = Game.new(@hand_3,@hand_1) #rock wins
    @game_7 = Game.new(@hand_3,@hand_2)
    @game_8 = Game.new(@hand_3,@hand_2)


  end

  def test_check_hands__rock_vs_paper
    assert_equal('paper wins!',@game_1.check_hands())
  end

  def test_check_hands__paper_vs_scizzors
    assert_equal('scizzors wins!',@game_2.check_hands())
  end

  def test_check_hands__paper_vs_rock
    assert_equal('paper wins!',@game_3.check_hands())
  end

  def test_check_hands__scizzors_vs_rock
    assert_equal('rock wins!',@game_4.check_hands())
  end




end
