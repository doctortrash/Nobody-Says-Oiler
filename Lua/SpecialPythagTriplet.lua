function isPythagTriplet(a,b,c)

  if (math.pow(a,2)+math.pow(b,2))==(math.pow(c,2)) then

    return true

  else

    return false

  end

end

function cValue(a,b)

  return math.sqrt(math.pow(a,2)+math.pow(b,2))

end



for aVal = 3,500 do

  for bVal = 4,500 do

    local cVal = cValue(aVal,bVal)

    if cVal == math.floor(cVal) then


      if aVal + bVal + cVal == 1000 then

        print(aVal * bVal * cVal)

      end

    end

  end

end
