-- Load the DrRay library from the GitHub repository Library
local DrRayLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/AZYsGithub/DrRay-UI-Library/main/DrRay.lua"))()

-- Create a new window and set its title and theme
local window = DrRayLibrary:Load("CDTStorm", "Default")

--1st tab
local tab = DrRayLibrary.newTab("Test Farming", "ImageIdHere")
tab1.newToggle("Toggle", "Toggle! (prints the state)", false, function(state)
  getfenv().auto = (state and true or false)
  wait(1)
  workspace.Gravity = getfenv().grav
  while getfenv().auto do
    task.wait()
  local chr = game.Players.LocalPlayer.Character
  local car = chr.Humanoid.SeatPart.Parent.Parent
    if not workspace:FindFirstChild("justapart") then
      local new = Instance.new("Part",workspace)
      new.Name = "justapart"
      new.Size = Vector3.new(10000,20,10000)
      new.Anchored = true
      new.Position = game.Players.LocalPlayer.Character.HumanoidRootPart.Position+Vector3.new(0,1000,0)
  end
  car:PivotTo(workspace:FindFirstChild("justapart").CFrame*CFrame.new(0,7,1000))
  local pos = workspace:FindFirstChild("justapart").CFrame*CFrame.new(0,7,-1000)
  repeat task.wait()
    local speed =  getfenv().speed or 300
    local accel = 300
    workspace.Gravity = 500
            car.PrimaryPart.Velocity = Vector3.new(car.PrimaryPart.Velocity.X,-100,car.PrimaryPart.Velocity.Z) 
    car:PivotTo(CFrame.new(car.PrimaryPart.Position,Vector3.new(pos.X,car.PrimaryPart.Position.Y,pos.Z)))
            car.PrimaryPart.Velocity = Vector3.new(car.PrimaryPart.Velocity.X,-100,car.PrimaryPart.Velocity.Z) 
    car.PrimaryPart.AssemblyLinearVelocity = car.PrimaryPart.CFrame.LookVector*speed
    car.PrimaryPart.Velocity = Vector3.new(car.PrimaryPart.Velocity.X,-100,car.PrimaryPart.Velocity.Z) 
  until game.Players.LocalPlayer:DistanceFromCharacter(Vector3.new(pos.X,pos.Y,pos.Z)) < 200 or getfenv().test == false
  end
  end)
