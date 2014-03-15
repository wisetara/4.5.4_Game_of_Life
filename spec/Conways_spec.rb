require 'rspec'
require 'Board'
require 'Cell'

describe "Cell" do
  it "should be initialized with coordinates" do
    test_cell = Cell.new(3, 4)
    test_cell.should be_an_instance_of Cell
  end

end

describe "Board" do
  it "should initialize an instance of Board with height and width" do
    test_board = Board.new(10, 12)
    test_board.should be_an_instance_of Board
    test_board.width.should eq 10
    test_board.height.should eq 12
  end
  describe ".create" do
    it "should create a new instance of Board" do
      test_board = Board.create(10, 12)
      test_board.should be_an_instance_of Board
    end
  end
  describe "populate" do
    it "should populate an instance of the board with cell instances" do
      test_board = Board.create(3,3)
      test_board.populate(3,3)
      test_board.spaces[1].x.should eq 1
      test_board.spaces[1].y.should eq 2
      test_board.spaces[5].x.should eq 2
      test_board.spaces[5].y.should eq 3
    end
  end
  describe '#mark_cell' do
    it "should indicate if a cell is alive" do
      test_board = Board.create(3,4)
      test_board.populate(3,4)
      test_board.mark_cell(1, 2)
      test_board.spaces[1].mark.join.should eq "A"
    end
  end
end
