tb = {}

local maxInt = 0

local intsFound = 1

local currentlyOn = 3


function CheckIfPrime(number)

  if number <= 3 and number > 1 then
    return true
  end

  if math.fmod(number,2) == 0 then
    return false
  end

  for div = 3,math.ceil(number/2),2 do

    if math.fmod(number,div)==0 then


      return false
    end
  end

  return true
end

while intsFound < 10001 do

  if CheckIfPrime(currentlyOn) == true then

      maxInt = currentlyOn
      intsFound = intsFound + 1

  end

  currentlyOn = currentlyOn +  2

end

print(maxInt)
