class Board

  def initialize
    @board = [["-", "-", "-"], ["-", "-", "-"], ["-", "-", "-"]]
  end

  def show_board
    @board.each do |row|
      p row
    end
  end

  def won?(symbol)
    if win_horizontal?(symbol) || win_vertical?(symbol) || win_diagonal?(symbol)
      puts "#{symbol} won"
      return true
    end
    false
  end

  def win_horizontal?(symbol)
    @board.each do |row|
      if row.count(symbol) == 3
        return true
      end
    end
    false
  end

  def win_vertical?(symbol)

    (0..2).each do |row|
      checker = []
      @board.each do |column|
        checker << column[row]
      end
      if checker.count(symbol) == 3
        return true
      end
    end
    false
  end

  def win_diagonal?(symbol)
    if @board[0][0] == symbol
      if @board[1][1] == symbol && @board[2][2] == symbol
        return true
      end
    elsif @board[0][2] == symbol
      if @board[1][1] == symbol && @board[2][0] == symbol
        return true
      end
    end
    false
  end


end

class Game

end

board = Board.new