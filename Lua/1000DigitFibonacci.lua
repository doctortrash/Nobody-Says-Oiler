function sum(val1,val2)
  local sum = ""

  if #val1 > #val2 then
    for i = 1, #val1 - #val2 do
      val2 = "0"..val2
    end
  else
    for i = 1, #val2 - #val1 do
      val1 = "0"..val1
    end
  end

  local carryover = 0

  for digPos = #val1,1,-1 do

    local dig1 = tonumber(string.sub(val1,digPos,digPos))
    local dig2 = tonumber(string.sub(val2,digPos,digPos))
    local unit = dig1 + dig2 + math.floor(carryover)

    if #tostring(unit) > 1 then
      carryover = tonumber(string.sub(tostring(unit),1,1))
      unit = string.sub(tostring(unit),2,2)
    else
      carryover = 0
    end

    sum = unit..sum

  end

  if carryover ~= 0 then
    sum = carryover..sum
  end


  return sum
end




local FibbonaciTable = {"1","1","2"}
local index = 4

local prev1 = "1"
local prev2 = "2"
local current = "3"


while #current < 1000 do
  local prev1Holder = prev1
  local prev2Holder = prev2
  local currentHolder = current

  prev1 = prev2Holder
  prev2 = currentHolder
  current = sum(currentHolder,prev2Holder)

  index = index + 1

end

print(index)
