tb = {}



local number = 3
local total = 1



function fixNumber(n)

  local stringNumber = tostring(n)

  local newString = ""

  for i = 1, #stringNumber do

    local toAdd = string.sub(stringNumber,i,i)

    if math.fmod(tonumber(string.sub(stringNumber,i,i)),2) == 0 then

      toAdd = tostring(tonumber(toAdd)+1)

    end

    --[[if math.fmod(tonumber(string.sub(stringNumber,i,i)),5) == 0 and tonumber(string.sub(stringNumber,i,i)) ~= 0 then

      if i >= 2 then

        if string.sub(stringNumber,i-1,i-1) ~= string.sub(newString,i-1,i-1) then

          toAdd = "1"

        else

          toAdd = tostring(tonumber(toAdd)+2)

        end


      else

        toAdd = tostring(tonumber(toAdd)+2)

      end



    end--]]


    newString = newString .. toAdd

  end

  return tonumber(newString)

end



function CheckIfPrime(number)

  if number == 1 then return false end

  if math.fmod(number,2) == 0 then
    return false
  end

  for div = 3,math.ceil(number/2),2 do

    if math.fmod(number,div)==0 then


      return false
    end
  end

  return true
end



while number < 1000000 do

  if fixNumber(number) ~= number then

    repeat

      number = number + 2

    until fixNumber(number) == number

  end

  string = tostring(number)

  length = #string

  works = true

  for i = 1,length do

    local number = tonumber(string.sub(string,i+1,length)..string.sub(string,1,i))

    if CheckIfPrime(number) == false then works = false end

  end


  if works == true then total = total + 1 print(number) end

  number = number + 2
end



print(total)
