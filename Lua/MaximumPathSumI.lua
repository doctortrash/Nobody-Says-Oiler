local size = 2
local largestSum = 0


local triangle = {
" 75",
" 95 64",
" 17 47 82",
" 18 35 87 10",
" 20 04 82 47 65",
" 19 01 23 75 03 34",
" 88 02 77 73 07 63 67",
" 99 65 04 28 06 16 70 92",
" 41 41 26 56 83 40 80 70 33",
" 41 48 72 33 47 32 37 16 94 29",
" 53 71 44 65 25 43 91 52 97 51 14",
" 70 11 33 28 77 73 17 78 39 68 17 57",
" 91 71 52 38 17 14 91 43 58 50 27 29 48",
" 63 66 04 68 89 53 67 30 73 16 69 87 40 31",
" 04 62 98 27 23 09 70 98 73 93 38 53 60 04 23"
}



local triangle2 = {
" 3",
" 7 4",
" 2 4 6",
" 8 5 9 3"
}


function getVal(row,col)
  local stringRow = triangle[row]
  local length = #stringRow

  local inc = 1

  for i = 1,length,(size + 1) do
    local stringSection = string.sub(stringRow,i+1,i+size)

    if inc == col then
      return stringSection
    end

    inc = inc + 1
  end
end


function addTableValues(tb)
  local sum = 0
  local string = ""

  for k,v in pairs(tb) do
    sum = sum + v
    string = string..v.." - "
  end

  return sum
end




--[[
  Okay so basically I am trying to make a recursive function that will take the 2
  values under itself and print 2 more values,
  if c is 15 then it prints the sum (gotta save that sum huh)

]]



function getValUnd(row,col,sum)
  --table.insert(sumTable,getVal(row,col))
  sum = sum + getVal(row,col)
  if row == 15 then
    --print("done! value at the end is", addTableValues(sumTable))
    print(sum)
    if sum > largestSum then
      largestSum = sum
    end
  else
    for i = 0,1 do
      getValUnd(row+1,col+i,sum)
    end
  end
end


getValUnd(1,1,0)
print(largestSum)
