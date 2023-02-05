local length = 10
local width = 5

for i=1, length do
  turtle.forward()
  if i % length == 0 then
    turtle.turnRight()
    turtle.forward()
    turtle.turnRight()
    for j=1, width-1 do
      turtle.forward()
    end
    turtle.turnLeft()
  end
end
