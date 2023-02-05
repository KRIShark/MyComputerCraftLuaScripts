local depth = 0
local maxdepth = 10


while true do
    if turtle.getFuelLevel == 0 then
        turtle.select(0)
        turtle.refuel()
    end
    if depth > maxdepth then
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
        turtle.dig()
        depth = depth + 1
    end
end