local width = 20
local height = 10

for y=1, height do
  for x=1, width do
    if y == 1 or y == height or x == 1 or x == width then
      term.setCursorPos(x, y)
      print("*")
    end
  end
end
