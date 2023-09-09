--bois here we go
local Tn,Pn,Hn = 1,1,1
local Tv,Pv,Hv = 1,1,1



function nextTriangle()
  Tn = Tn+1
  Tv = math.floor(Tn * (Tn+1)/2)
end


function nextPentagonal()
  Pn = Pn+1
  Pv =  math.floor(Pn * ((Pn * 3)-1)/2)
end


function nextHexagonal()
  Hn = Hn+1
  Hv = math.floor(Hn * ((2 * Hn)-1))
end



repeat
  nextTriangle()

  if Pv < Tv then
    repeat nextPentagonal() until Pv >= Tv
  end

  if Hv < Tv then
    repeat nextHexagonal() until Hv >= Tv
  end

until Tv == Pv and Pv == Hv and Hv ~= 40755

print(Tv,Pv,Hv)
