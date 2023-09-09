--[[
We need numbers that are consecutive that

]]

function CheckIfSimilarFactors(a,b)

  if a == b then return true end

  return false

end

function GetSmallestFactor(number)
  for i = 2,number do
    if number % i == 0 then return i end
  end
end


function GetFactors(number)
  local factorCount = 0
  local stringfactor = ""
  local factorTable = {}
  local previousFactor

  repeat

    local nextFactor = GetSmallestFactor(number)

    stringfactor = stringfactor.."/"..tostring(nextFactor)




    number = number / nextFactor

    if previousFactor ~= nextFactor then
      factorCount = factorCount + 1
    end

    previousFactor = nextFactor

  until number == 1 or factorCount > 4

  if factorCount ~= 4 then return nil end

  return stringfactor
end


local tb = {"/1","/2"}

local streak = 1
local number = 2

local STREAK_NEEDED = 2


local previous = "/2"
local prevprevious = "/1"
local prevprevprevious


repeat

  number = number + 1
  --print(number)

  local current = GetFactors(number)
  if current ~=nil then print(number,current,streak) end

  if previous ~= nil and current ~= nil and prevprevious~= nil and prevprevprevious ~= nil then
    --we dont want previous OR current to be nil, so it will just recycle through until all are good
    print(prevprevprevious,prevprevious,previous,current)
    streak = streak + 1
  else
    --number = number + 3
    streak = 1
  end

  prevprevprevious = prevprevious
  prevprevious = previous
  previous = current

until streak == STREAK_NEEDED
