require('minitest/autorun')
require_relative('../player.rb')
require_relative('../board.rb')
require_relative('../dice.rb')



class BoardTest < MiniTest::Test

  def setup
    @player1 = Player.new('Alice')
    @player2 = Player.new('Nicky')
    @board1 = Board.new((1..25).to_a, [@player1, @player2])
    @dice = Dice.new(6)
  end

  # def test_board_is_correct_size
  #   assert_equal(25, @board1.create_size())
  # end

  def test_game_has_2_players
    assert_equal(2, @board1.players.count)
  end

  def test_board_has_tiles
    assert_equal(25, @board1.tiles.count)
  end

  def test_ladder_works

  end



  # def test_

end
