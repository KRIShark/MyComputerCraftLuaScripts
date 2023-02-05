local hight = 2
local selected = 1

while true do
    if turtle.getFuelLevel == 0 then
        print("Refuel")
        turtle.select(0)
        turtle.refuel()
        if turtle.getFuelLevel == 0 then
            break
        end
    end
    if turtle.getItemCount() == 0 then
        selected = selected + 1
        turtle.select(selected)
    end
    turtle.place()
    turtle.up()
    turtle.place()
    turtle.down()
    turtle.turnLeft()
    turtle.forward()
    turtle.turnRight()
    
end