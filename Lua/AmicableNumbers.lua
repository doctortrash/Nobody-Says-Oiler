n = 10000

tb = {}

total = 0





function getSum(number)

  sum = 0
  for i = 1,number/2 do





    if math.fmod(number,i) == 0 then


      sum = sum + i
    end


  end


  return sum

end



for i = 2,n do

  local sum = getSum(i)

  greater = 0
  less = 0

  if i > sum then

    greater = i
    less = sum

  else

    greater = sum
    less = i

  end

  string = tostring(greater).."_"..tostring(less)



  if tb[string] then

    print(greater,less)

    total = total + greater + less

  else

    tb[string] = 0

  end




end




print(total)
