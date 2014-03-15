class Cell
  attr_reader :x, :y, :mark

  def initialize(x, y)
    @x = x
    @y = y
    @mark = []
  end

end
