



function getSpiral(length)
  local sum = 1
  local currentLength = 1
  local increment = 2

  local currentNumber = 1

  repeat
    currentNumber = currentNumber + increment
    sum = sum + currentNumber

    for i = 1,3 do
      currentNumber = currentNumber + increment
      sum = sum + currentNumber
    end

    currentLength = currentLength + 2
    increment = increment + 2
    print(currentLength)

  until length == currentLength


  return sum
end




print(getSpiral(1001))
