function createCycle(denominator)
  local numberString = ""

  --local base = math.floor(10^(#tostring(denominator)))
  local base = 10
  local currentBase = base


  --[[for i = 2, #tostring(denominator) do
    numberString = numberString.."0"
  end]]



  for rep = 1, 1000 do

    local addon = math.floor(currentBase/denominator)
    local remainder = math.fmod(currentBase, denominator)


    if remainder == 1 then
      --numberString = numberString.."0"..addon
      numberString = numberString..addon
    else
      numberString = numberString..addon
    end


    currentBase = base * remainder
  end

  return numberString
end




local Number = 0
local MaxRepeat = 0




function checkIfLegal(string)

  for offset = 1, #(string)/2 do
    for length = 2, #(string)/2 do

      local subsection = string.sub(string,offset,offset+length)
      local sectionAfter = string.sub(string,offset+length+1,offset+(2*length)+1)

      if subsection == sectionAfter then
        return false
      end

    end
  end


  return true
end






--[[
for denominator = 1,999 do



  local cycle = createCycle(denominator)
  print(denominator)
  --print(cycle) which prints basically the decimal portion without 0. in front

  for offset = 1, #(cycle)/2 do
    for length = 1, #(cycle)/2 do
      local subsection = string.sub(cycle,offset,offset+length)
      local sectionAfter = string.sub(cycle,offset+length+1,offset+(2*length)+1)

      if subsection == sectionAfter then
        --it repeats, but is the section valid?
        if checkIfLegal(subsection) == true then
          -- it is what it issss ain' it

          if #subsection > MaxRepeat then
            MaxRepeat = #subsection
            Number = denominator
          end

        end


      end

    end
  end


end

]]










function createCycle2(denominator)
  local numberString = ""

  --local base = math.floor(10^(#tostring(denominator)))
  local base = 10
  local currentBase = base


  --[[for i = 2, #tostring(denominator) do
    numberString = numberString.."0"
  end]]


  local works = true

  repeat

    local addon = math.floor(currentBase/denominator)
    local remainder = math.fmod(currentBase, denominator)


    if remainder == 1 then
      --numberString = numberString.."0"..addon
      numberString = numberString..addon
    else
      numberString = numberString..addon
    end

    for offset = 1, #(numberString)/2 do
      for length = 2, #(numberString)/2 do
        local subsection = string.sub(numberString,offset,offset+length)
        local sectionAfter = string.sub(numberString,offset+length+1,offset+(2*length)+1)

        if subsection == sectionAfter then

          works = false
        end

      end

    end

    currentBase = base * remainder

  until works == false

  return numberString
end


for denominator = 1,999 do --I did 1-999 but I ended up learning that the repeating count of decimal digits actually increases as you go along, so doing 999 down unti u get a big number is most probable
  local cycle = createCycle2(denominator)

  print(denominator,#cycle)




end



print(Number)
print(MaxRepeat)
