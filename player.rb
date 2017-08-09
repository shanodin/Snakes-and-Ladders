require_relative("dice.rb")

class Player

  attr_accessor(:name, :position)

  def initialize(name)
    @name = name
    @position = 1
  end

  def move(number)
    # @position = @position + number
    @position = @position + number
    return "You have won!" if @position >= 25
    return @position
  end

  def climb()
    return @position = @position + 5
  end
  #   return @position
  # end

  def fall()
    # if @position == 15
    return @position = @position - 5
  end
  # return @position
  # end

end
