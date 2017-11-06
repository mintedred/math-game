module MathGame
  class Turn
    def initialize(player)
      @first_num = rand(1..20)
      @second_num = rand(1..20)
      @player = player
      ask_question
    end

    def ask_question 
      puts "#{@player.id}: What does #{@first_num} plus #{@second_num} equal?"       
      player_answer = gets.chomp.to_i
      answer = @first_num + @second_num
      if player_answer == answer
        puts "YES! You are correct."
      else
        @player.die
        puts "Wrong answer!"
      end
    end
    
    
  end
end