local file = io.open("p042_words.lua","r")
print(file)
io.input(file)

--print(io.read())

function CheckSum(number)

  --local sqrt = math.ceil(math.sqrt(number * 2))
  local newnum = number * 2
  for i = 1,newnum/2 do
    if newnum / i == i + 1 then

      return true
    end

  end

  return false
end



local str = io.read()
local count = 1

local previous = 1
for i = 1,#str do
  if string.sub(str,i,i) == "," then

    local word = string.sub(str,previous+2,i-2)


    local sum = 0

    for index = 1,#word do
      local char = string.sub(word,index,index) -- gets the value of the character
      sum = sum + string.byte(char) - 64

    end
    print(word,sum)



    if CheckSum(sum) == true then count = count + 1 end


    previous = i
  end

end


print(count)
