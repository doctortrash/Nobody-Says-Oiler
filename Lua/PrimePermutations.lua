
local increment = 3330

local max = 10000

local firstvalue = 0

tb = {1,3,5,7}

tb2 = {1,5,3,7}

table.sort(tb2)

print(tb[1] == tb[1])

function CheckIfPrime(number)


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

function getSumOfDigits(numb)

  local newNumb = 0

  local stringedNumb = tostring(numb)

  for i = 1,#stringedNumb do

    newNumb = newNumb + tonumber(string.sub(stringedNumb,i,i))

  end


  return newNumb

end



for i = 1000,max do

  if i + (increment*2) > 10000 then return end

  if CheckIfPrime(i) == true then

    if CheckIfPrime(i+increment) == true and CheckIfPrime(i+(increment*2)) == true then


      local firstSum = getSumOfDigits(i)
      local secondSum = getSumOfDigits(i+increment)
      local thirdSum = getSumOfDigits(i+(increment*2))


      if firstSum == secondSum and secondSum == thirdSum then

        local tbFirstNumb = {}

        local tbSecondNumb = {}

        local tbThirdNumb = {}



        local stringedNumb = tostring(i)

        for i = 1,#stringedNumb do

          table.insert(tbFirstNumb,1,string.sub(stringedNumb,i,i))

        end






        local stringedNumb2 = tostring(i+increment)

        for i = 1,#stringedNumb2 do

          table.insert(tbSecondNumb,1,string.sub(stringedNumb2,i,i))

        end





        local stringedNumb3 = tostring(i+(increment*2))

        for i = 1,#stringedNumb3 do

          table.insert(tbThirdNumb,1,string.sub(stringedNumb3,i,i))

        end

        table.sort(tbFirstNumb)
        table.sort(tbSecondNumb)
        table.sort(tbThirdNumb)

        if tbFirstNumb[1] == tbSecondNumb[1] and tbSecondNumb[1] == tbThirdNumb[1] and tbFirstNumb[2] == tbSecondNumb[2] and tbSecondNumb[2] == tbThirdNumb[2] and tbFirstNumb[3] == tbSecondNumb[3] and tbSecondNumb[3] == tbThirdNumb[3] and tbFirstNumb[4] == tbSecondNumb[4] and tbSecondNumb[4] == tbThirdNumb[4] then

          print(tostring(i)..tostring(i+increment)..tostring(i+(increment*2)))

          print(i)

        end




      end


    end

  end

end
