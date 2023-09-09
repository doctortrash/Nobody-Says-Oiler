local increment,factors,requiredFactors = 5900,0,500

local number

repeat

  local factorTable = {["1"]=1}
  local factorTable2 = {["1"]=1}
  factors = 0

  number = (increment * (increment + 1))/2

  local fac1
  local fac2


  if (increment % 2) == 0 then
    --this value is already good to be divided by 2
    fac1 = increment/2
    fac2 = increment+1
  else
    fac1 = (increment+1)/2
    fac2 = increment
  end


  for inc = 2,fac1 do
    if (fac1 % inc) == 0 then
      --this is le factor
      if factorTable[tostring(inc)] ~= nil then
        factorTable[tostring(inc)] = factorTable[tostring(inc)] + 1
      else
        factorTable[tostring(inc)] = 1
      end
    end
  end




  for cni = 2,fac2 do
    if (fac2 % cni) == 0 then
      --this is le factor
      if factorTable2[tostring(cni)] ~= nil then
        factorTable2[tostring(cni)] = factorTable2[tostring(cni)] + 1
      else
        factorTable2[tostring(cni)] = 1
      end
    end
  end



  increment = increment + 1

  local totalF1,totalF2 = 0,0

  for f,c in pairs(factorTable) do
    totalF1 = totalF1 + 1
  end
  for f,c in pairs(factorTable2) do
    totalF2 = totalF2 + 1
  end

  factors = totalF1*totalF2

  print(fac1,fac2,"total factors",factors)

until factors >= requiredFactors


print("The number is "..number..", with a total factor count of "..factors.." (Total required is "..requiredFactors..")")
