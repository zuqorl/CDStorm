-- Load the DrRay library from the GitHub repository Library
local DrRayLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/AZYsGithub/DrRay-UI-Library/main/DrRay.lua"))()

-- Create a new window and set its title and theme
local window = DrRayLibrary:Load("DrRay!", "Default")

-- Create the first tab with an image ID
local tab1 = DrRayLibrary.newTab("Tab 1", "ImageIdHere")

-- Add elements to the first tab
tab1.newLabel("Hello, this is Tab 1.")
tab1.newButton("Button", "Prints Hello!", function()
    print('Hello!')
end)
tab1.newToggle("Toggle", "Toggle! (prints the state)", true, function(state)
    _G.racetest = (state and true or false)
    while _G.racetest do
        wait()
    if game:GetService("Players").LocalPlayer.PlayerGui.Menu.Race.Visible == false then
        local chr = game.Players.LocalPlayer.Character
    local car = chr.Humanoid.SeatPart.Parent.Parent
    car:PivotTo(CFrame.new(1049.2476806640625, 609.7359008789062, 2511.8427734375))
    chr.Head.Anchored = true
    wait(1)
    chr.Head.Anchored = false
    wait(1)
workspace:WaitForChild("Races"):WaitForChild("RaceHandler"):WaitForChild("StartLobby"):FireServer(unpack(Race))

    task.wait(15)
workspace.Races.Race.Script.Vote:FireServer("10", "Vote")
    repeat wait()
    until game:GetService("Players").LocalPlayer.PlayerGui.Menu.Race.Visible == true or _G.racetest == false
    elseif game:GetService("Players").LocalPlayer.PlayerGui.Menu.Race.Visible == true then
    for i =1,50 do
workspace.Races.Race.Script.Checkpoint:FireServer(i)
end
end
end
end)
end)
tab1.newInput("Input", "Prints your input.", function(text)
    print("Entered text in Tab 1: " .. text)
end)

-- Create the second tab with a different image ID
local tab2 = DrRayLibrary.newTab("Tab 2", "ImageIdLogoHere")

-- Add elements to the second tab
tab2.newLabel("Hello, this is Tab 2.")
tab2.newButton("Button", "Prints Hello!", function()
    print('Hello!')
end)
tab2.newToggle("Toggle", "Toggle! (prints the state)", true, function(toggleState)
    if toggleState then
        print("On")
    else
        print("Off")
    end
end)
tab2.newDropdown("Dropdown", "Select one of these options!", {"water", "dog", "air", "bb", "airplane", "wohhho", "yeay", "delete"}, function(selectedOption)
    print(selectedOption)
end)
end)
