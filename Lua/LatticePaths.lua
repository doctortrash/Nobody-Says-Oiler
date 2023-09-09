--the lattice path formula in mathcounts is ((m+n)!)/(m*n)
--If you do N (m+n) Choose X (just n), you get the right answer, it is also X = m (works)

--I did the math IN MY HEAD, I could have made a check multiplication calculator but whatever dude

function factorial(n)
  local val = 1

  for inc = 2,n do
    val = val * inc
  end

  return val
end


function factorialTable(n)
  local tb = {}

  for inc = 1,n do
    tb[tostring(n)] = 0
  end

  return tb
end



function getPathRoutes(m,n)

  local numFactors = {}
  local denomFactors1,denomFactors2 = {},{}

  --[[num = factorial(m+n)
  denom = factorial(m) * factorial(n)]]

  numFactors = factorialTable(m+n)
  denomFactors1 = factorialTable(m)
  denomFactors2 = factorialTable(n)


  for num,_ in pairs(numFactors) do
    for num2,_ in pairs(denomFactors1) do
      if tonumber(num) % tonumber(num2)
    end
  end





  local num = 1
  local denom = 1



  return num/denom
end


print(getPathRoutes(2,3))
