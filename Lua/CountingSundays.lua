local months = {"Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec"}
local monthDays = {31,28,31,30,31,30,31,31,30,31,30,31}
local leapMonthDays = {31,29,31,30,31,30,31,31,30,31,30,31}
local days = {"Sun","Mon","Tue","Wed","Thu","Fri","Sat"}

local DayIndex = 3

local CurrentDay = 1
local CurrentMonth = 1 --index
local CurrentYear = 1900

local SundayCount = 0

--[[
  % 4 is a leap year, always
  Jan 1st 1901 was a Tuesday
]]
--print(os.date())


--[[
function getDay(d,m,y)

  repeat
    -- body...
    local MaxYearDays = 365
    CurrentDay = 1
    CurrentMonth = 1
    CurrentYear = CurrentYear + 1

    if CurrentYear % 4 == 0 then
      MaxYearDays = 366
    end


    --[[if DayIndex == 1 and CurrentDay == 1 then
      --first sunday, but we got to see if it is a first day
      SundayCount = SundayCount + 1
    end] ]



    for day = 1, MaxYearDays do



      local n = 0
      local inc = 1


      if CurrentYear % 4 == 0 then
        for k,v in pairs(leapMonthDays) do
          if n + v > CurrentDay then
            CurrentMonth = inc
          else
            inc = inc + 1
            n = n + v
          end

        end

        --print(CurrentYear,months[inc],CurrentDay)

        if DayIndex == 1 and n + 1 == CurrentDay then
          --first sunday, but we got to see if it is a first day
          SundayCount = SundayCount + 1
          print("leap",days[DayIndex],months[CurrentMonth],CurrentYear)
        end

      else
        for k,v in pairs(monthDays) do
          if n + v > CurrentDay then
            CurrentMonth = inc
          else
            inc = inc + 1
            n = n + v
          end
        end

        if DayIndex == 1  and n + 1 == CurrentDay then
          --first sunday, but we got to see if it is a first day
          SundayCount = SundayCount + 1
          print(days[DayIndex],months[CurrentMonth],CurrentYear)
        end

      end






      if DayIndex + 1 > #days then
        DayIndex = 1
      else
        DayIndex = DayIndex + 1
      end

      CurrentDay = CurrentDay + 1

    end


  --until CurrentYear > 1901
until CurrentYear==y--CurrentDay == d and CurrentMonth == m and CurrentYear == y

  return days[DayIndex]
end

getDay(1,1,2000)
print(SundayCount)]]


local M,D,Y = 1,1,1900

repeat

  Y = Y + 1
  M = 1

  local dayTable
  local totalDays

  if Y % 4 == 0 then
    dayTable = leapMonthDays
    totalDays = 366
  else
    dayTable = monthDays
    totalDays = 365
  end

  for n = 1,12 do

    M = n

    local time = os.time{year=Y, month=M, day=D}
    local abbDay = os.date("%a", time)

    if abbDay == "Sun" then
      SundayCount = SundayCount + 1
      print(months[M],Y)
    end

  end

until Y > 1999



--print(os.time({"year"=1901,"month"=1,"day"=1}))
--print(os.time{year=1901, month=9, day=1})
--print(os.date("%a", -2156389200))
print(SundayCount)
----waefawef
