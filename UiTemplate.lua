-- Load the DrRay library from the GitHub repository Library
local DrRayLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/AZYsGithub/DrRay-UI-Library/main/DrRay.lua"))()

-- Create a new window and set its title and theme
local window = DrRayLibrary:Load("CDTStorm", "Default")

--1st tab
local tab = DrRayLibrary.newTab("Test Farming", "ImageIdHere")
tab1.newLabel("Information's Tab")
tab1.newToggle("Auto Race", "Toggle! (prints the state)", false, function(state)
            _G.racetest = (state and true or false)
            while _G.racetest do
                wait()
            if game:GetService("Players").LocalPlayer.PlayerGui.Menu.Race.Visible == false then
                local chr = game.Players.LocalPlayer.Character
            local car = chr.Humanoid.SeatPart.Parent.Parent
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
