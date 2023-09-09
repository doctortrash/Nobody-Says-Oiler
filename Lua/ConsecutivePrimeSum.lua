--[[
953:
7+11+13+17 + 19 + 23 + 29 + 31 + 37 + 41 + 43 + 47 + 53+ 59 + 61 + 67 + 71 + 73 + 79+83+89

Strategy: Keep adding primes together from the lowest number to get a value
  - We need to assume that to get the MOST amount of consecutive primes we can get it from just removing and adding table values

  Start with getting to 1mil, then remove first prime and add next prime
]]

function CheckIfPrime(number)
  if number % 2 == 0 and number ~= 2 then return false end

  for i = 3,math.ceil(number/2),2 do
    if number % i == 0 then return false end
  end

  return true
end



function GetNextPrime(number)
  --Returns the next prime value after a certain prime
  local works = false
  repeat
    number = number + 2
    if CheckIfPrime(number) == true then
      works = true
    end
  until works == true

  return number
end



local primeTable = {2,3}
local terms = 2
local sum = 5
local number = 3

local MAX_SUM = 1000000


local primeFound = false





repeat

  local done = false

  sum = sum - primeTable[1]
  terms = terms - 1
  table.remove(primeTable, 1)

  repeat

    local next = GetNextPrime(number)

    if sum + next > MAX_SUM then
      done = true
    else
      number = next
      terms = terms + 1
      sum = sum + number
    end

    table.insert(primeTable,number)

  until done == true

  print(sum,terms)

  if CheckIfPrime(sum) == true then primeFound = true end


until primeFound == true
print(sum)
--]]
