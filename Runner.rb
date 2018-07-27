require_relative("./Game.rb")

print "please enter secret phrase:"
word = gets.chomp()
@game = Game.new("Michael", word)
system "clear"
result=""
while !@game.is_won() && !@game.is_lost
  system "clear"
  puts result
  @game.print_hiddenword()
  print "guess a letter:"
  letter = gets.chomp()
  result =  @game.make_guess(letter)
end

if @game.is_won()
  puts "congratulationssssss"
else
  puts "ohh try again"
end
