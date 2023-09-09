done = false
numb = 0
Min,Max=1,20

Value = 2*3*5*7*11*13*17*19
numb = Value

repeat

  local AmountOfTimesWorked = 0

  for Val = Min,Max do

    if math.fmod(numb,Val)==0 then
      print(numb,Val)
      AmountOfTimesWorked = AmountOfTimesWorked + 1
      if AmountOfTimesWorked==20 then
        print("Done")
        done = true
      end
    end

  end

  if done == false then
    print("Changing")
    numb=numb+Value
  end

until done==true


print(numb)
