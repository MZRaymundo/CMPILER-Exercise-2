=begin
    NAME: Gabrielle Amze L. Raymundo
    EMAIL: gabrielle_raymundo@dlsu.edu.ph
    Exercise 2 - CMPILER X22

    This program computes for the minimum number of pastes that can be done to a print statement given the number of print statements requires by the user.
    Deleting a line after pasting is not allowed

    |--Variables used ------------------------------------------------------------------------------|
    |  input               |  the number of print statements the user wants to print                |
    |  counter             |  a counter for the number of times the procedure of copy pasting done  |
    |  totalStatements     |  the total number of statements that can possibly be copy pasted       |
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

#computes for the least number of times the print statement can be copy pasted.
def computeNumOfTimesCopied(input)
  counter = 0
  totalStatements = 1

  # continue to do the procedure when totalStatements is less than what is required by the user.
  while totalStatements < input
    if(totalStatements*2 <= input)                    # START OF IF ELSE STATEMENT ----------------------------------------------------------------------------
      totalStatements *= 2                            # this checks if the results of the totalStatements when copied at max is more than the input
    else                                              # if it isn't, proceed to copying at max, else, only copy the number of lines needed to complete the code
      totalStatements += (input - totalStatements)    # this part of the code prevents the user to delete lines after pasting.
    end                                               # END OF IF ELSE STATEMENT ------------------------------------------------------------------------------

    counter +=1                                       # counter increments as the procedure has been done
  end

  return counter;
end

#main program
input = getInput
result = computeNumOfTimesCopied(input)
printResult(result)
