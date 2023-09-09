--[[

Find the sum of all positive integers that can >NOT< be written as the sum of two abundant numbers
 - an abundant number is if the sum of the digits is greater than the number

Dont worry, its only numbers less than 28123

--]]

function getFactorTable(num)
  local tb = {}
  for n = 1,math.ceil(num/2) do
    if num % n == 0 then
      -- this value is a divisor
      table.insert(tb,n)
    end
  end
  return tb
end



function sumFactorTable(tb)
  local sum = 0
  for _,val in pairs(tb) do
    sum = sum  + val
  end
  return sum
end


local abundantTable = {}
--14062 but i didnt want to risk

for number = 12, 28200 do

  local factorTable = getFactorTable(number)
  local sumTable = sumFactorTable(factorTable)

  if sumTable > number then
    -- this is an abundant number
    abundantTable[tostring(number)] = 0
  end

end
print("abundantTable created")


local sum = 0


function checkIfSum(number)

  for add,_ in pairs(abundantTable) do

    if abundantTable[tostring(number - tonumber(add))] ~= nil then
      return true
    end

  end

  return false
end


for i = 1,28123 do

  if checkIfSum(i) ~= true then
    sum = sum + i
    print(i)
  end




end


print(sum)

--ww
