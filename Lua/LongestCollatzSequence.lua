local longestLength = 0
local longestStartingNumberLength = 0


function nIsEven(number)

  number = number/2


  return number
end



function nIsOdd(number)

  number = number*3
  number = number+1

  return number
end



for n = 1,1000000 do

  local current= n

  if math.fmod(current,2)==0 then

    current=nIsEven(current)
  else
    current=nIsOdd(current)

  end

  local length = 1


  while current ~=1 do

    if math.fmod(current,2)==0 then

      current=nIsEven(current)
    else
      current=nIsOdd(current)

    end

    length = length+1
  end



  if length > longestLength then

    longestLength = length
    longestStartingNumberLength = n
  end


  print(n)

end


print(longestStartingNumberLength,longestLength)
