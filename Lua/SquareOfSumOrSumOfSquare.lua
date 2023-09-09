Min,Max=1,100

function GetSquareOfSum(mn,mx)

  local n = 0

  for i = mn,mx do

    n = n + i

  end

  print(n)

  n=math.pow(n, 2)

  return n
end


function GetSumOfSquare(mn,mx)

  local n = 0

  for i = mn,mx do

    n = n + math.pow(i, 2)

  end


  return n
end

print(GetSumOfSquare(Min,Max)-GetSquareOfSum(Min,Max))
