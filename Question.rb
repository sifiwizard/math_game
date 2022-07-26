class Question

  def initialize
    @firstNum = rand(1..20)
    @secoudNum = rand(1..20)
    @expresion = rand(1..4)
  end

  def prompt(expresion)
    puts "What does #{@firstNum} #{expresion} #{@secoudNum} equal?"
  end

  def ask
    case @expresion
    when 1
      @answer = @firstNum + @secoudNum
      prompt("plus")
    when 2
      @answer = @firstNum - @secoudNum
      prompt("minus")
    when 3
      @answer = @firstNum * @secoudNum
      prompt("times")
    when 4
      @answer = @firstNum / @secoudNum
      prompt("divided by")
    end
  end

  def answer(answer)
    return @answer === answer.to_i
  end
end