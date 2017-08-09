class Board

  attr_accessor :side, :players

  def initialize(side, players)
    @side = side
    @players = players
  end

  def create_size()
    board_size = @side * @side
    return board_size
  end

  def tiles()
    [*1..create_size]
  end


end
