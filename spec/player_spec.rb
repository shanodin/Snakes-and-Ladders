require('minitest/autorun')
require_relative('../player.rb')
require_relative('../board.rb')
require_relative('../dice.rb')



class PlayerTest < MiniTest::Test

  def setup
    @player1 = Player.new('Alice')
    @player2 = Player.new('Nicky')
    @board1 = Board.new(5, [@player1, @player2])
    @dice = Dice.new(6)
  end

  def test_player_has_name
    assert_equal('Nicky', @player2.name)
  end

  # def test_player_has_position
  #   position = @player1.position.between?(1,25)
  #   assert_equal(true, position)
  # end

  def test_player_starts_at_one
    assert_equal(1, @player1.position)
  end

  def test_move_player
    # arrange

    # act
    @player1.move(5)
    # assert
    assert_equal(6, @player1.position)
  end

  def test_end_of_game
    assert_equal("You have won!", @player1.move(26))
  end

end
