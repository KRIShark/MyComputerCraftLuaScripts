local length = 10
local width = 10

local countLength = 0
local countWidth = 0


while true do
    if turtle.getFuelLevel() == 0 then
        print("Refuel")
        turtle.select(1)
        turtle.refuel()
        if turtle.getFuelLevel() == 0 then
            break
        end
    end
    if turtle.detect() then
        print("attack")
        turtle.attack()
    end

    if length < countLength then
        print("face backword")
        turtle.turnLeft()
        turtle.forward()
        turtle.turnLeft()
        countLength = 0
        countWidth = countWidth + 1 
    end

    if countLength then
        print("return")
        for i = 1, length, 1 do
            turtle.forward()
        end
        turtle.turnRight()
        for i = 1, countWidth, 1 do
            turtle.forward()
        end
        turtle.turnRight()
        countLength = 0
        countWidth = 0
    end

    turtle.forward()
end