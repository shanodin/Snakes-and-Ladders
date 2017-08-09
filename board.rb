class Board

  attr_accessor :tiles, :players

  def initialize(tiles, players)
    @tiles = tiles
    @players = players
  end

## For when 5 is inputted as side will create 25 tiled board
  # def create_size()
  #   board_size = @side * @side
  #   return board_size
  # end
  #
  # def tiles()
  #   [*1..create_size]
  # end


end
