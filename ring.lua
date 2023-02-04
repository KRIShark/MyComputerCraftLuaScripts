local notes = {
    ["C"] = 262,
    ["D"] = 294,
    ["E"] = 330,
    ["F"] = 349,
    ["G"] = 392,
    ["A"] = 440,
    ["B"] = 494,
  }

while true do
    if redstone.getInput("right") then
      term.clear()
      term.setCursorPos(1, 1)
      print("Hello")
      speaker.playNote(262, 1)
    end
    sleep(0.5)
  end
  