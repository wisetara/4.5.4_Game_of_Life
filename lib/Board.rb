class Board

  attr_reader :width, :height, :spaces

  def initialize(width, height)
    @width = width
    @height = height
    @spaces = []
  end

  def Board.create(width, height)
    new_board = Board.new(width, height)
  end

  def populate(width, height)
    1.upto(width) do |width|
      1.upto(height) do |height|
        @spaces << Cell.new(width,height)
      end
    end
  end

  def mark_cell(x_coord, y_coord)
    live_cell = @spaces.detect do |cell|
      (cell.x == x_coord) && (cell.y == y_coord)
    end
    live_cell.mark << "A"
  end
end
