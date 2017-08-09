class Board

  attr_accessor :tiles, :players, :ladders, :snakes

  def initialize(tiles, players, ladders, snakes)
    @tiles = tiles
    @players = players
    @ladders = ladders
    @snakes = snakes
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

  def turn
    @players[0].move(14)
    if @players[0].position == @ladders[0]
      return @players[0].climb
    elsif @players[0].position == @snakes[0]
      return @players[0].fall
    end
  end


end
