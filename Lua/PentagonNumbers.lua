local prevTable = {1,5,12}
local prevTableString = {["1"]=0,["5"]=0,["12"]=0}
local prevSumTable = {}
local prevSubtractTable = {}



function CheckIfPentagonal(number)
  --check if some value n exists s.t.   number = n(3n-1) / 2
  --in contrast: 2number = n(3n-1)

  local newnum = number * 2

  for i = math.ceil(number/2),1,-1 do
    if newnum / i == 3 * i - 1 then
      return true
    end

  end

  return false
end

function CheckIfPentagonalByTable(number)
  for i,v in pairs(prevTable) do
    if v == number then
      return true
    elseif v > number then
      return false
    end
  end
end

n = 3
Pn = 12


function doit()

  while true do
    previous = Pn
    n = n + 1
    Pn = math.floor(n * (3 * n - 1) / 2)
    print(Pn)


    for _,value in pairs(prevTableString) do
      local subtractedValue = Pn-value
      if prevTableString[tostring(subtractedValue)] ~= nil then
        print(Pn,value,subtractedValue,"subtractworks")
        --the subtracted value is pentagonal boys!
        if CheckIfPentagonal(Pn+value) == true then
          print("DONE",subtractedValue)
          return
        end
      end

    end


    table.insert(prevTable,Pn)
    prevTableString[tostring(Pn)] = Pn

  end

end

doit()



--[[
function doit()
  local previous

  while true do
    previous = Pn
    n = n + 1
    Pn = math.floor(n * (3 * n - 1) / 2)
    print(Pn)


    for index,value in pairs(prevSumTable) do

      if value <= Pn then
        table.remove(prevSumTable,index)
        if value == Pn then --this value works well
          --local previous = math.floor((n-1) * (3*(n-1) - 1) / 2)
          local previousOther = value - previous
          print(value,"final",previous,previousOther,previous-previousOther)
          if CheckIfPentagonalByTable(previous - previousOther) then print("DONE DEAL DONE DEAL DONE DEAL") return end

        end
      end

    end


    for _,prevPentagonal in pairs(prevTable) do
      local sum = prevPentagonal + Pn
      table.insert(prevSumTable,sum)
      --table.insert(prevSubtractTable,Pn)
    end


    table.insert(prevTable,Pn)


  end

end

doit()

--[[




while true do
  n = n + 1
  Pn = math.floor(n * (3 * n - 1) / 2)
  print(Pn)


  for _,number in pairs(prevTable) do
    --check if any of them added together form a pentagonal

    if CheckIfPentagonal(Pn + number) and CheckIfPentagonal(Pn - number) then
      --this is the number
      print(Pn,Pn+number,Pn-number,"final answer")
      break
    end
  end


  table.insert(prevTable,Pn)



end
--]]
