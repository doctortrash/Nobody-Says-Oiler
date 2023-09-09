local string = ""


--[[
  author's note 9/8/2023: this is horribly memory inefficient LOL
--]]

for i = 1,250000 do


  string = string..tostring(i)


end


local sum = tonumber(string.sub(string,1,1))
sum = sum * tonumber(string.sub(string,10,10))
sum = sum * tonumber(string.sub(string,100,100))
sum = sum * tonumber(string.sub(string,1000,1000))
sum = sum * tonumber(string.sub(string,10000,10000))
sum = sum * tonumber(string.sub(string,100000,100000))
sum = sum * tonumber(string.sub(string,1000000,1000000))

print(sum)
