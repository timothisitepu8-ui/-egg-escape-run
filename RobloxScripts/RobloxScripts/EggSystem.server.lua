
-- EGG ESCAPE RUN
-- EGG COLLECTION SYSTEM

local Players = game:GetService("Players")

local function setupPlayer(player)
    player:SetAttribute("EggCount", 0)
end

Players.PlayerAdded:Connect(setupPlayer)

local function collectEgg(player)
    local count = player:GetAttribute("EggCount") or 0

    player:SetAttribute("EggCount", count + 1)

    print(player.Name .. " collected an egg!")
end

local function loseEgg(player)
    player:SetAttribute("EggCount", 0)

    print(player.Name .. " lost all eggs!")
end

_G.CollectEgg = collectEgg
_G.LoseEgg = loseEgg
