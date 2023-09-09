tb = {}
number = 600851475143


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


while number > 1 do
  for divisor = 3,number,2 do

    if math.fmod(number,divisor)==0 and CheckIfPrime(divisor)==true then

      table.insert(tb,1,divisor)
      print("Divisible by "..tostring(divisor))
      number=number/divisor
      break


    end
  end
end
