local p = 5

local Max = 1000

local highestValueThatWeGot = 0

local highestPValueCorrelating = 0


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


for i = p,Max do

  local total = 0

  for aVal = 3,500 do

    for bVal = 4,500 do

      local cVal = cValue(aVal,bVal)

      if cVal == math.floor(cVal) then


        if aVal + bVal + cVal == p then

          print(p,aVal,bVal,math.floor(cVal))
          total = total + 1

        end

      end

    end

  end

  if total/2 >= highestValueThatWeGot then

    highestValueThatWeGot = total/2

    highestPValueCorrelating = p

  end

  p=p+1

end


print(highestValueThatWeGot)
print(highestPValueCorrelating)
