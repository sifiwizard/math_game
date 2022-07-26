require './Player.rb'
require './Question.rb'


player1 = Player.new()
player2 = Player.new()
turn = "Player 1"

while player1.lives > 0 && player2.lives > 0
  p1 = player1.lives
  p2 = player2.lives
  question = Question.new()
  puts turn
  question.ask
 if turn === "Player 1"
  puts player1.checking(question.answer(gets.chomp))
  turn = "Player 2"
 elsif turn === "Player 2"
  puts player2.checking(question.answer(gets.chomp))
  turn = "Player 1"
 end
 if player1.lives === 0
  puts "#{turn} wins with a score of #{p2}/3"
  puts "--- GAME OVER ---"
  break
 end
 if player2.lives === 0
  puts "#{turn} wins with a score of #{p1}/3"
  puts "--- GAME OVER ---"
  break 
 end
  puts "P1: #{p1}/3 vs P2 #{p2}/3"
  puts "--- NEW TURN ---"
end

