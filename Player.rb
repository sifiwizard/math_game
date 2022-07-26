class Player
  def initialize
    @lives = 3
  end

  attr_reader :lives

  def checking(answer)
    if !answer
      self.lose
      return "You are not correct"
    end
    return "Yes you are correct."
  end

  def lose
    @lives -= 1
  end
end