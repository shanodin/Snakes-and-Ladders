require('minitest/autorun')
require_relative('../player.rb')
require_relative('../board.rb')
require_relative('../dice.rb')
require_relative('../tile.rb')

class TileTest < MiniTest::Test

  def setup
    @tiles = Tile.new([
      {9 => :normal},
      {15 => :snake},
      {12 => :ladder}
    ])
  end

  def test_9_is_normal
    assert_equal(:normal, @tiles.tiles[0][9])
  end

end
