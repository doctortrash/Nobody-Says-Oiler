local sumOfCharacters = 0

local Table = {
  onethousand = 1000,
  ninehundred = 900,
  eighthundred = 800,
  sevenhundred = 700,
  sixhundred = 600,
  fivehundred = 500,
  fourhundred = 400,
  threehundred = 300,
  twohundred = 200,
  onehundred = 100,
  ninty = 90,
  eighty = 80,
  seventy = 70,
  sixty = 60,
  fifty = 50,
  fourty = 40,
  thirty = 30,
  twenty = 20,
  nineteen = 19,
  eighteen = 18,
  seventeen = 17,
  sixteen = 16,
  fifteen = 15,
  fourteen = 14,
  thirteen = 13,
  twelve = 12,
  eleven = 11,
  ten = 10,
  nine = 9,
  eight = 8,
  seven = 7,
  six = 6,
  five = 5,
  four = 4,
  three = 3,
  two = 2,
  one = 1,
}




local TableLength = 0



for i = 1,1000 do

  local CurrentNumber = i
  local TotalString = ""


  while CurrentNumber > 0 do

    local HighestValueThatIsLessOrEqualToCurrent = 0
    local HighestValueThatIsLessOrEqualString = ""


    for string,value in pairs(Table) do

      if value <= CurrentNumber and value > HighestValueThatIsLessOrEqualToCurrent and CurrentNumber - value >=0 then


        HighestValueThatIsLessOrEqualString = string
        HighestValueThatIsLessOrEqualToCurrent = value

      end

    end


    CurrentNumber = CurrentNumber - HighestValueThatIsLessOrEqualToCurrent
    TotalString = TotalString..HighestValueThatIsLessOrEqualString


  end

  if i > 100 then

    if math.fmod(i,100) ~= 0 then

      TotalString = TotalString.."and"

    end

  end

  sumOfCharacters = sumOfCharacters + #TotalString

  print(TotalString)
  print(#TotalString)


end


print(sumOfCharacters)
