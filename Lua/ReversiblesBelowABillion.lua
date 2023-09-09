--[[
GOAL: All digits of n + reverse(n) must be ODD


What we know:
  - Even + Even == NADA
  - Odd + Odd == NADA

  orgn: 5126
  fnal: 6215



]]

local Count = 0

function CheckIfPrime(number)
  if number % 2 == 0 then return false end

  for factor = 3,math.ceil(number/2),2 do
    if number % factor == 0 then
      return false
    end
  end

  return true
end

function GetReverse(number)
  local newnumber = ""
  local previous

  for index = 1,#tostring(number) do

    newnumber = string.sub(tostring(number),index,index)..newnumber

  end

  newnumber = tonumber(newnumber)
  return newnumber
end

function CheckIfReversable(number)
  local length = #tostring(number)
  if string.sub(tostring(number),1,1) == string.sub(tostring(number),length,length) then return false end

  local reverse = GetReverse(number)

  if reverse == false then return false end

  if reverse %2 == number %2 then
    --They either both odd or both even
    return false
  end

  local total = reverse + number

  for index = 1,#tostring(total) do
    --Check each digit to see if it is muy buen
    local sub = string.sub(total,index,index)

    if tonumber(sub) % 2 == 0 then return false end

  end

  return true

end

for number = 1,1000000000 do
  if number % 10 ~= 0 then
    --its not divisible by 0
    if CheckIfReversable(number) == true then
      Count = Count +1
      print(number)

    end
  else
    print(number)
  end
end

print(Count)
