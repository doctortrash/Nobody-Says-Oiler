local Table = {}

function CheckIfPrime(number)
  if number % 2 == 0 then return false end

  for factor = 3,math.ceil(number/2),2 do
    if number % factor == 0 then
      return false
    end
  end

  return true
end


function CheckIfPandigital(number)
  local tb = {}

  if string.find(tostring(number),0) ~= nil then return false end

  for index = 1, #tostring(number) do
    local sub = string.sub(tostring(number),index,index)

    if tb[sub] ~= nil then
      return false
    else
      tb[sub] = 0
    end

  end

  return true

end


function CreatePandigitalFactor(number)

  for factor = 2,math.ceil(number/2) do
    if number % factor == 0 then
      local factor1 = factor
      local factor2 = math.floor(number/factor)

      local combination = tostring(factor1)..tostring(factor2)..tostring(number)

      if #combination == 9 and CheckIfPandigital(combination) == true then
        print(combination)
        return true
      end

    end
  end

  return false

end

local Count = 0

for number = 10,98765 do
  if number % 10 ~= 0 and string.find(tostring(number),"0") == nil and CheckIfPandigital(number) == true and CheckIfPrime(number) ~= true  then
    --The number is pandigital itself and works out

    if CreatePandigitalFactor(number) == true then
      Count = Count + number
      print(number,Count)
    end

  end
end


--[[
for a = 1234,987654 do
  if string.find(tostring(a),"0") == nil and CheckIfPandigital(a) == true then

    for b = 1234,987654 do
      if string.find(tostring(b),"0") == nil and CheckIfPandigital(b) == true then
        print(b)
        local combination = tostring(a)..tostring(b)..tostring(a*b)

        if #combination == 9 and string.find(tostring(combination),"0") == nil and CheckIfPandigital(combination) == true then
          print(combination,a,b)

          if Table[tostring(a*b)] == nil then
            Table[tostring(a*b)] = 0
          end

        end


      end
    end

  end
end

--]]

print(Count)
