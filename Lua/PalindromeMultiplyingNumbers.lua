CurrentLargest = 0

for MultipleA = 100,999 do


  if math.fmod(MultipleA,10)~=0 then
  for MultipleB = 100,999 do

    if math.fmod(MultipleB,10)~=0 then

    local Product = MultipleA * MultipleB

    if Product > CurrentLargest or math.fmod(Product,10)~=0 then


    local StringOfProduct = tostring(Product)
    local StringLengthOfProduct = #StringOfProduct
    if StringLengthOfProduct ~= 5 then
    if string.sub(StringOfProduct,1,1) == string.sub(StringOfProduct,6,6) then
      if string.sub(StringOfProduct,2,2) == string.sub(StringOfProduct,5,5) then
        if string.sub(StringOfProduct,3,3) == string.sub(StringOfProduct,4,4) then
          --works
          if tonumber(StringOfProduct)>CurrentLargest then
            CurrentLargest = tonumber(StringOfProduct)
          end
        end
      end
    end
  end
  end
  end
end
  end

end



print(CurrentLargest)
