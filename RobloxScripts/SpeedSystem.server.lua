
-- EGG ESCAPE RUN
-- Speed System
-- Server Script

local Players = game:GetService("Players")

local DEFAULT_SPEED = 16
local MAX_SPEED = 100

Players.PlayerAdded:Connect(function(player)
    player.CharacterAdded:Connect(function(character)
        local humanoid = character:WaitForChild("Humanoid")
        humanoid.WalkSpeed = DEFAULT_SPEED

        player:SetAttribute("SpeedLevel", DEFAULT_SPEED)
    end)
end)

print("EGG ESCAPE RUN: Speed System Loaded!")
