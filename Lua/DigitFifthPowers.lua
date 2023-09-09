local wholetotal = 0

for number = 999,999999 do
  local stringNumber = tostring(number)
  print(number)
  local total = 0

  for i = 1, #stringNumber do
    local sub = string.sub(stringNumber,i,i)

    total = total + tonumber(sub)^5

  end


  if total == number then

    wholetotal = wholetotal + total

  end

end


print(wholetotal) --literally easiest problem of the century?
