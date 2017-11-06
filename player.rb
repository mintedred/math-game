module MathGame
  LIFE_DECREMENT = 1
  ALL_LIVES = 3
  class Player
    attr_accessor :lives
    attr_reader :id

    def initialize(id)
      @id = "Player #{id}"
      @lives = ALL_LIVES
    end

    def alive?
      @lives > 0
    end

    def die
      @lives -= LIFE_DECREMENT
    end

  end
end