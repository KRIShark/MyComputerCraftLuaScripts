local depth = 0
local maxdepth = 10


while true do
    if turtle.getFuelLevel == 0 then
        print("Refuel")
        turtle.select(0)
        turtle.refuel()
        if turtle.getFuelLevel == 0 then
            break
        end
    end
    if depth > maxdepth then
        print("Return")
        turtle.turnLeft()
        turtle.turnLeft()
        for i = 1,depth do
            turtle.forward()
        end
        depth = 0
        turtle.turnLeft()
        turtle.forward()
        turtle.turnLeft()
    end
    if turtle.detect() then
        print("Dig")
        turtle.dig()
        turtle.up()
        turtle.dig()
        turtle.down()
        depth = depth + 1
    end
    turtle.forward()
end