=begin
    NAME: Gabrielle Amze L. Raymundo
    EMAIL: gabrielle_raymundo@dlsu.edu.ph
    Exercise 2 - CMPILER X22

    This program computes for the minimum number of pastes that can be done to a print statement given the number of print statements requires by the user.
    Deleting a line after pasting is not allowed

    |--Variables used ------------------------------------------------------------------------------|
    |  input               |  the number of print statements the user wants to print                |
    |  result              |  the output - the number of times the procedure of copy pasting done   |
    |-----------------------------------------------------------------------------------------------|
=end

#gets the input of the user
def getInput
  puts "\n\n====================== PROGRAM ======================"
  puts "   How many print statements do you want?"
  print"   Answer: "
  input = gets.to_i

  return input
end

#prints the result of what was computed
def printResult(result)
  puts
  puts "   Least number of times you can copy paste a "
  puts "   print statement: #{result}"
  puts "======================== END ========================\n\n"
end

#main program
input = getInput
printResult(Math.log2(input).ceil)
