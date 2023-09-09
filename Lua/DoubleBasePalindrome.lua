function makeBase2String(val)

  local string = ""

  local hE = -1

  repeat
    hE = hE + 1
  until 2^hE > val

--[[
  for i = 1,hE do
    string = string.."0"
  end]]

  hE = hE - 1

  for i = hE,0,-1 do
    --decrease the hE value
    if 2^i <= val then
      val = val - 2^i
      string = "1"..string
    else
      string = "0"..string
    end
  end

  return string
end

--print(makeBase2String(585))

function checkIfPalindrome(val)
  --must be a string
  --math.floor(length)/2

  local length = math.floor(#val)/2

  for i = 1,length do

    local str1 = string.sub(val,i,i)
    local str2 = string.sub(val,(#val-i+1),(#val-i+1))

    if str1 ~= str2 then
      return false
    end

  end

  return true
end



local sum = 0

for number = 1,1000000 do

  if checkIfPalindrome(tostring(number)) then
    local base2 = makeBase2String(number)
    if checkIfPalindrome(base2) then
      sum = sum + number
      print(number)
    end
  end

end

print(sum)
