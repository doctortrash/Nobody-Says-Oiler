local check = {2,3,5,7,11,13,17}
local sum = 0


function recurse(stringnumber)

  if #stringnumber == 9 then
    for i = 9,0,-1 do
      if string.find(stringnumber,tostring(i)) == nil then


        local newnum = stringnumber..tostring(i)

        local length = #newnum
        local substring = string.sub(newnum,length - 2,length)

        if tonumber(substring) % 17 == 0 then
          sum = sum + tonumber(newnum)
          print(newnum)
        end

      end

    end
  end


  for i = 9,0,-1 do
    if string.find(stringnumber,tostring(i)) == nil then
      local newnum = stringnumber..tostring(i)

      if #newnum > 3 then

        --we need to do a check
        local length = #newnum
        local substring = string.sub(newnum,length - 2,length)
        local checkvalue = check[length - 3]

        if tonumber(substring) % checkvalue == 0 then
          recurse(newnum)
        end
      else
        recurse(newnum)

      end

    end
  end

end

for i = 9,1,-1 do
  recurse(tostring(i))
end

print(sum)
