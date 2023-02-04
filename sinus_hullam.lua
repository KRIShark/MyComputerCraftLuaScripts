local width = 50
local height = 15

for x=1, width do
  local y = math.sin(x / width * math.pi * 2) * height + height
  y = math.floor(y)
  term.setCursorPos(x, y)
  print("*")
end