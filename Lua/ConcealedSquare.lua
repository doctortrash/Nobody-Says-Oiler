function recurse(str)
  if #str > 15 then
    local finalstr = tonumber(str.."00")
    print(finalstr)

    local sqrt = math.sqrt(finalstr)

    --[[if sqrt == math.ceil(sqrt) then
      print("DONE")
      return finalstr
    end]]

  else
    for i = 0,9 do
      local newstr = str..tostring(i)
      newstr = newstr..tostring(math.ceil((#newstr + 1)/2))

      recurse(newstr)
    end
  end
end



print(recurse("1"))
