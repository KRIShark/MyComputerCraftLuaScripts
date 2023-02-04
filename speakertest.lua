local notes = {
    ["C"] = 262,
    ["D"] = 294,
    ["E"] = 330,
    ["F"] = 349,
    ["G"] = 392,
    ["A"] = 440,
    ["B"] = 494,
  }
  
  local song = {
    "C", "C", "G", "G", "A", "A", "G",
    "F", "F", "E", "E", "D", "D", "C"
  }
  
  for i, note in ipairs(song) do
    local frequency = notes[note]
    speaker.playNote(frequency, 1)
    sleep(0.5)
  end
  