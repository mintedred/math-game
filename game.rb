module MathGame
  class Game
    def initialize
      @p1 = Player.new("1")
      @p2 = Player.new("2")
      @current_player = @p1
      start_game
    end

    def start_game         
      Turn.new(@current_player)

      while @p1.alive? && @p2.alive?
        new_turn
      end
      
      if !@p1.alive?
        puts "Player 2 wins with a score of #{@p2.lives}/3"
      elsif !@p2.alive?
        puts "Player 1 wins with a score of #{@p1.lives}/3"
      end

      puts "----- GAME OVER -----"
      puts "Good bye!"

    end

    def new_turn
      puts "P1: #{@p1.lives}/3 vs P2: #{@p2.lives}/3"   
      puts "----- NEW TURN -----"
      @current_player == @p1 ? @current_player = @p2 : @current_player = @p1
      Turn.new(@current_player)
    end

  end
end