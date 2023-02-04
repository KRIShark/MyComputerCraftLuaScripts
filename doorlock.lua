local code = "2023"
local input = read("Enter code: ")

if input == code then
    print("Access granted. Door opened.")
    redstone.setOutput("left", true)
    sleep(10)
    redstone.setOutput("left", false)
else
    print("Access denied.")
end
