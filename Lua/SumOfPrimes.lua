tb = {}

local sum = 2 + 3 + 5 + 7


function CheckIfPrime(number)

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



for i = 3,2000000,2 do

  if math.fmod(i, 5) ~= 0 and math.fmod(i, 3) ~= 0 and math.fmod(i, 7) ~= 0 and math.fmod(i, 9) ~= 0 then

    if CheckIfPrime(i) == true then

      sum = sum + i
      print(i)

    end

  end

end

print(sum)
