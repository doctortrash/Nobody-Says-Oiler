function CheckIfSameDigits(a,b)



  return true
end



function CheckIfPermuted(number)
  if #tostring(number * 6) ~= #tostring(number) then return false end
  --the digit count works

  for i = 2,6 do
    if CheckIfSameDigits(number,number * i) == false then return false end
  end

  return true
end


local number = 100000
local value

repeat
  -- body...



  number = number + 1
until value ~= nil
