
-- EGG ESCAPE RUN
-- TREADMILL SYSTEM

local Players = game:GetService("Players")

local SPEED_INCREASE = 2
local MAX_SPEED = 100

while true do
    task.wait(0.5)

    for _, player in ipairs(Players:GetPlayers()) do
        local character = player.Character
        local humanoid = character and character:FindFirstChildOfClass("Humanoid")
        local root = character and character:FindFirstChild("HumanoidRootPart")

        if humanoid and root and humanoid.Health > 0 then
            for _, treadmill in ipairs(workspace:GetDescendants()) do
                if treadmill:IsA("BasePart")
                and treadmill.Name == "Treadmill" then

                    local distance = (root.Position - treadmill.Position).Magnitude

                    if distance < 6 then
                        local speed = player:GetAttribute("SpeedLevel") or 16
                        speed = math.min(speed + SPEED_INCREASE, MAX_SPEED)

                        player:SetAttribute("SpeedLevel", speed)
                        humanoid.WalkSpeed = speed
                        break
                    end
                end
            end
        end
    end
end
