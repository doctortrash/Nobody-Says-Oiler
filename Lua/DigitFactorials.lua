

function Factorial(number)

  local sum = 1

  for i = 2,number do

    sum = sum * i

  end

  return sum

end


local currentlyOn = 3
local sumOfPossibilities = 0
local Max = Factorial(10)

while currentlyOn < Max do

  local length = #tostring(currentlyOn)

  local miniSum = 0

  for i = 1,length do

    local sub = tonumber(string.sub(tostring(currentlyOn),i,i))

    miniSum = miniSum + Factorial(sub)


  end

  if miniSum == currentlyOn then
    print(currentlyOn)
    sumOfPossibilities = sumOfPossibilities + miniSum

  end

  currentlyOn = currentlyOn + 1

end

print(sumOfPossibilities)
