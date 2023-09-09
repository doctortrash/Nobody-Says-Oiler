local largval = 0

function CheckIfPrime(number)

  if number % 2 == 0 then return false end

  for div = 3,math.ceil(number/2) do

    if number % div == 0 then
      return false
    end

  end

  return true
end



function recurse(stringnumber)

  if #stringnumber == 6 then
    for i = 7,1,-2 do
      if string.find(stringnumber,tostring(i)) == nil then

        local newnum = tonumber(stringnumber..tostring(i))
        --print(newnum)

        if CheckIfPrime(newnum) == true then
          largval = largval + 1
          print(newnum) break
        end

      end

    end
  end


  for i = 7,1,-1 do
    if string.find(stringnumber,tostring(i)) == nil then
      local newnum = stringnumber..tostring(i)

      recurse(newnum)
    end
  end

end

for i = 7,1,-1 do
  recurse(tostring(i))
end


print(largval,"final")
