--[[local tb = {}
local tb2 = {}
local CurrentPermutation = "1234"
local Original = CurrentPermutation

local index = 1
local max = #CurrentPermutation


for i = 1,max-2 do

  local inc = i

  repeat


    if tb[CurrentPermutation] == nil then
      tb[CurrentPermutation] = 0
      table.insert(tb2,CurrentPermutation)
    end

    if tb[string.reverse(CurrentPermutation)] == nil then
      tb[string.reverse(CurrentPermutation)] = 0
      table.insert(tb2,string.reverse(CurrentPermutation))
    end

    --print(string.reverse(CurrentPermutation), CurrentPermutation)


    index = index + 1

    if index + inc > max then
      index = 1
    end



    local NewPerm = string.sub(CurrentPermutation,0,index-1)..string.sub(CurrentPermutation,index+inc,index+inc)..string.sub(CurrentPermutation,index+1,index+inc-1)..string.sub(CurrentPermutation,index,index)..string.sub(CurrentPermutation,index+inc+1,max)


    CurrentPermutation = NewPerm
    --print(CurrentPermutation)

  until CurrentPermutation == Original

end




table.sort(tb2)
for k,v in pairs(tb2) do
  print(v)
end
print(#tb2)





--[[
function newDigit(current)



  if #current < #CurrentPermutation then


  else
    for i = 1,#CurrentPermutation


    end
  end

end





print(newDigit(""))




--wah
]]

local m = "0123456789"
local n = #m - 1
local tb = {}
local r = 0

function recurse(number)
  if #number == n+1 then
    table.insert(tb,number)
    r=r+1 print(r)

    if r == 1000000 then
      print("val is do", number)
    end

    return
  else

    for i = 0,n do


      local x = false

      for d = 1,#number do
        if string.sub(number,d,d) == tostring(i) then x = true end
      end

      if x ~= true then
        local test =  number..tostring(i)
        recurse(test)
      end


    end

  end
end



for i = 0,3 do
  recurse(tostring(i))
end




table.sort(tb)
print("val is ",tb[1000000])






--wa
