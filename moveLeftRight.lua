local xPos = 1
local yPos = 1
local direction = 1

while true do
  term.clear()
  term.setCursorPos(xPos, yPos)
  print("SHARKBASE")
  
  xPos = xPos + direction
  if xPos == 1 or xPos == term.getSize() then
    direction = -direction
  end
  
  sleep(0.1)
end
