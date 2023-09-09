local longest = 0
local longestA
local longestB


function checkifPrime(num)
  num = math.abs(num)
  if num % 2 == 0 then return false end
  if num < 4 then return true end

  for i = 3,math.ceil(num/2),2 do

    if (num % i == 0) then

      return false

    end

  end

  return true
end




function returnLongest(a,b)
  local primeCount = 0

  local works = true

  repeat

    local value = math.floor(math.pow(primeCount,2)) + (a * primeCount) + b

    if checkifPrime(value) == false then
      works = false
    else
      primeCount = primeCount + 1
    end

  until works == false

  return primeCount
end



for a = -1000,1000 do
  for b = -999,999,2 do


    local value = returnLongest(a,b)

    if value > longest then
      longest = value
      longestA = a
      longestB = b
    end

  end
  print(a)
end


print(longest)
print("val is", longestA*longestB)
