=begin
Dale Estilo Al Código

Not only a good programmer writes code but is organized and
clean repeatedly. To have a decent code must follow a series
grammatical conventions and Syntax.
=end

class Guessing
  # Store valid answers in an array
  NUMBERS = (1..100).to_a 

  def initialize(answer)
    #'@answer' and '@solved' variables are initialized 
    @answer = answer
    @solved = false
    # Validate input
    raise "Answer must be between 1 and 100" unless NUMBERS.include? @answer
  end
  
  def guess(number)
    # Check if the two are equal
    if number == @answer 
      @solved = true
      :correct
    # Check if the guess is higher
    elsif number > @answer 
      @solved = false
      :high
    # Check if the guess is lower
    elsif number < @answer
      @solved = false
      :low
    end
  end
  
  def solved?
    #it returns @solved variable - true or false
    @solved
  end
end

game = Guessing.new(10)

# This following should print out a whole bunch of "true"
puts game.guess(5)  == :low
puts game.guess(15) == :high
puts game.solved?() == false
puts game.guess(10) == :correct
puts game.solved?() == true
puts game.guess(2)  == :low
puts game.solved?() == false