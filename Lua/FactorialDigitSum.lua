-- Goal: Find the value of the sum of the digits of 100!



--[[x = "abcdef"
print(string.sub(x,1,2)) [return "ab"]]


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



function multiply(val,smallerVal)
  --params: val MUST be a string for this to work

  local valuesTable = {}
  local length = #val

  for n = #smallerVal,1, -1 do

    local string = ""
    local carryover = 0

    for i = length,1,-1 do

      --basically take the substring, but this time we will add the value for all digits of smallerVal
      --[[
      steps:
      - multiply the
      ]]

      local digit = tonumber(string.sub(val,i,i))
      local multVal = tonumber(string.sub(smallerVal,n,n))
      local unit = (digit * multVal) + math.floor(carryover)


      if #tostring(unit) > 1 then
        carryover = string.sub(tostring(unit),1,1)
        unit = string.sub(tostring(unit),2,2)
      else
        carryover = 0
      end

      string = unit..string

    end

    if carryover ~= 0 then
      string = tostring(carryover)..string
    end


    for i = 1, #smallerVal - n do

      string = string.."0"

    end

    --print(string)

    table.insert(valuesTable,string)

  end

  if #valuesTable > 1 then
    local s = valuesTable[1]
    for i = 2,#valuesTable do
      s = sum(s,valuesTable[i])
    end
    return s
  else
    return valuesTable[1]
  end

end



str = "1"
for i = 1,100 do
  str = multiply(tostring(str),tostring(i))
  --print(str)
end

local dum = 0

for i = 1,#str do
  dum = dum + tonumber(string.sub(str,i,i))
end

print(dum)
