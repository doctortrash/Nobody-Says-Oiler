
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

local number = 987654321

while true do
  local isPan = false

  if CheckIfPandigital(number) == true and number % 10 ~= 5 then
    --it is pandigital
    --print(number)
    for i = 1,#tostring(number) do
      --obtain possible a * b factor combinations

      local sub = tonumber(string.sub(tostring(number),1,i))
      --this sub will act as the x1 reference
      local newsub = tostring(sub)..tostring(sub*2)

      if string.find(tostring(number),newsub) == 1 then
        print(number,"GG") break
      end

    end

    isPan = true
  end

  if isPan == true then
    number = number - 2
  else
    number = number - 1
  end

end
