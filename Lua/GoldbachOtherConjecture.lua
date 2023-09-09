function CheckIfPrime(number)
  for i = 3,math.ceil(number/2),2 do
    if number % i == 0 then
      return false
    end
  end

  return true
end



function works(number)
  for i = number,3,-2 do
    local subtracted = (number - i)/2

    if math.sqrt(subtracted) == math.ceil(math.sqrt((subtracted))) then
      --then this works lets check if i == prime
      if CheckIfPrime(i) == true then
        return true
      end
    end

  end

  return false
end




local number = 3
function doit()
  while true do
    print(number)
    if works(number) == false then return end

    number = number + 2
  end
end



doit()
