
function CheckifRelativelyPrime(dividend,divisor)
  --dividend/divisor

  for num = 2,math.ceil(dividend/2) do

    if dividend % num == 0 and divisor % num == 0 then

      return false

    end

  end


  return false
end



function getDenom(num)

  for denom = 10,99 do
    local value = num/denom

    if denom % 11 ~= 0 and num % 11 ~= 0 then

      if tonumber(string.sub(num,2,2)) == tonumber(string.sub(denom,1,1)) and tonumber(string.sub(num,1,1)) / tonumber(string.sub(denom,2,2)) == value then
        if CheckifRelativelyPrime(tonumber(string.sub(num,1,1)) , tonumber(string.sub(denom,2,2))) == false then
          return denom
        end
      elseif tonumber(string.sub(num,1,1)) == tonumber(string.sub(denom,2,2)) and tonumber(string.sub(num,2,2)) / tonumber(string.sub(denom,1,1)) == value then
        if CheckifRelativelyPrime(tonumber(string.sub(num,2,2)) , tonumber(string.sub(denom,1,1))) == false then
          return denom
        end
      end

    end

  end


  return nil
end



for num = 10,49 do

  if getDenom(num) ~= nil then

    print(num,getDenom(num))


  end


end
