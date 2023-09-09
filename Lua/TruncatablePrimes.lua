local sum = 0
local currentFound = 0
local number = 1

--[[
THIS ONE WAS WAYY OVERTHOUGHT: YOU NEED 23 AS A VALUE

]]

function CheckIfPrime(number)

  if number % 2 == 0 then return false end

  for div = 3,math.ceil(number/2) do

    if number % div == 0 then
      return false
    end

  end

  return true
end



function CheckIfTruncatable(number)

  for index = 1, #tostring(number) do

    local sub1 = string.sub(tostring(number),1,index)
    local sub2 = string.sub(tostring(number),index,#tostring(number))

    if CheckIfPrime(tonumber(sub1)) ~= true or CheckIfPrime(tonumber(sub2)) ~= true then
      return false
    end

  end

  return true
end



for front = 3,9,2 do
  for back = 3,9,2 do
    local finalnumber = tonumber(tostring(front)..tostring(back))

    if CheckIfTruncatable(finalnumber) == true then
      sum = sum + finalnumber
      print(finalnumber,sum)
      currentFound = currentFound + 1
    end

  end
end


while currentFound < 10 do

  if string.find(tostring(number),"0") == nil and string.find(tostring(number),"2") == nil and string.find(tostring(number),"4") == nil and string.find(tostring(number),"5") == nil and string.find(tostring(number),"6") == nil and string.find(tostring(number),"8") == nil then
    for front = 3,7,4 do
      for back = 3,7,4 do
        local finalnumber = tonumber(tostring(front)..tostring(number)..tostring(back))
        --print(finalnumber)

        --if CheckIfPrime(number) == true then

          if CheckIfTruncatable(finalnumber) == true then
            sum = sum + finalnumber
            print(finalnumber,sum)
            currentFound = currentFound + 1
          end

        --end

      end
    end
  end

  number = number + 2

end



print(sum)
