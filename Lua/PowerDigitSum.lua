-- Goal: Find the value of the sum of the digits of 2^1000



--[[x = "abcdef"
print(string.sub(x,1,2)) [return "ab"]]



function multiplyBy2(val)
  --params: val MUST be a string for this to work
  local string = ""
  local length = #val
  local carryover = 0

  for i = length,1,-1 do

    --basically ill take the substring, since this is only by 2 its MUCH easier
    --[[
    steps:
    - multiply the digit by 2
    - take the carryover (it will only be 1, you can just check the length and add 1 to the next one)
    ]]

    local digit = tonumber(string.sub(val,i,i))
    local unit = digit * 2 + carryover


    if #tostring(unit) > 1 then
      -- its 2 digits
      --print("2 dig")
      carryover = 1
      unit = string.sub(tostring(unit),2,2)
    else
      carryover = 0
    end

    string = unit..string

  end

  if carryover == 1 then
    string = "1"..string
  end

  return string
end



str = "1"
for i = 1,1000 do
  str = multiplyBy2(tostring(str))
  --print(str)
end


local v = 0

for i = 1,#str do
  v = v + tonumber(string.sub(str,i,i))
end

print(v)
